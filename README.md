# Hexyl.yazi

Preview any file on [yazi](https://github.com/sxyazi/yazi) using [hexyl](https://github.com/sharkdp/hexyl). To add this plugin, clone this repo inside `~/.config/yazi/hexyl.yazi`and add this to your `yazi.toml` config:

```toml
append_previewers = [
    { mime = "*", exec = "hexyl"},
]
```

## Preview

![preview.png](https://raw.githubusercontent.com/Reledia/hexyl.yazi/main/image.png)
