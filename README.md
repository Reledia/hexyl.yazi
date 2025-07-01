# hexyl.yazi

>[!WARNING]
>This plugin is now deprecated with the release of [Piper](https://github.com/yazi-rs/plugins/tree/main/piper.yazi#use-hexyl-as-fallback-previewer)

Preview any file on [Yazi](https://github.com/sxyazi/yazi) using [hexyl](https://github.com/sharkdp/hexyl). To install, use the `ya pack` cli utility:

```bash
ya pack -a Reledia/hexyl
```

then include it in your `yazi.toml` to use:

```toml
[plugin]
append_previewers = [
  { name = "*", run = "hexyl" },
]
```

Make sure you have [hexyl](https://github.com/sharkdp/hexyl) installed, and that can be found in `PATH`.

## Preview

![preview.png](https://raw.githubusercontent.com/Reledia/hexyl.yazi/main/image.png)