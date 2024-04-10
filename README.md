# hexyl.yazi

Preview any file on [Yazi](https://github.com/sxyazi/yazi) using [hexyl](https://github.com/sharkdp/hexyl). To install, clone the repo inside your `~/.config/yazi/plugins/`:

```bash
git clone https://github.com/Reledia/hexyl.yazi.git
```

then include it in your `yazi.toml` to use:

```toml
[plugin]
append_previewers = [
  { name = "*", run = "hexyl" },
]
```

Make sure you have [hexyl](https://github.com/sharkdp/hexyl) installed, and can be found in `PATH`.

## Preview

![preview.png](https://raw.githubusercontent.com/Reledia/hexyl.yazi/main/image.png)
