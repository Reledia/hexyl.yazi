local M = {}

function M:peek(job)
	local child
	local l = self.file.cha.len
	if l == 0 then
		child = Command("hexyl")
			:args({
				tostring(job.file.url),
			})
			:stdout(Command.PIPED)
			:stderr(Command.PIPED)
			:spawn()
	else
		child = Command("hexyl")
			:args({
				"--border",
				"none",
				"--terminal-width",
				tostring(job.area.w),
				tostring(job.file.url),
			})
			:stdout(Command.PIPED)
			:stderr(Command.PIPED)
			:spawn()
	end

	local limit = job.area.h
	local i, lines = 0, ""
	repeat
		local next, event = child:read_line()
		if event == 1 then
			ya.err(tostring(event))
		elseif event ~= 0 then
			break
		end

		i = i + 1
		if i > job.skip then
			lines = lines .. next
		end
	until i >= job.skip + limit

	child:start_kill()
	if job.skip > 0 and i < job.skip + limit then
		ya.manager_emit("peek", { math.max(0, i - limit), only_if = job.file.url, upper_bound = true })
	else
		lines = lines:gsub("\t", string.rep(" ", PREVIEW.tab_size))
		ya.preview_widgets(job, { ui.Text.parse(lines):area(job.area) })
	end
end

function M:seek(units)
	require("code").seek(job, units)
end

return M
