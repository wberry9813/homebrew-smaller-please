# Smaller, Please — Homebrew Tap

The Homebrew tap for **[Smaller, Please](https://github.com/wberry9813/Smaller-Please)** — a
local-first tool that makes images and videos smaller *before* they are uploaded to AI apps such
as ChatGPT and Claude. Processing happens entirely on your Mac; nothing is uploaded to a
Smaller, Please server.

This tap ships the **CLI** (`smaller`) as a Homebrew formula — the developer / AI-agent
installation path. For the graphical installer, use the DMG on the
[releases page](https://github.com/wberry9813/Smaller-Please/releases).

## Install

```bash
brew tap wberry9813/smaller-please
brew install smaller-please
```

`brew trust wberry9813/smaller-please` is **not** required for this formula on current Homebrew
(it was a requirement for the old cask). If your Homebrew version asks you to trust the tap
first, run it once and continue.

The formula installs the prebuilt CLI directly — it does **not** build from source, run
`smaller setup`, register the Native Host, touch Chrome, or modify your `$HOME`.

## Verify

```bash
smaller --version   # smaller 0.1.0
smaller doctor      # backend / media engine / health report (read-only)
```

## Finish setup

Homebrew does not run setup for you:

```bash
smaller setup
```

Then do the one-time Chrome step: open `chrome://extensions`, enable **Developer mode**, click
**Load unpacked**, and select:

```
~/Applications/Smaller Please Extension
```

Always load the extension from that visible path — never from the Homebrew Cellar.

## Requirements

- macOS 12 (Monterey) or later.
- Apple Silicon (**arm64**) only. Intel Macs are not supported yet.
- Google Chrome for the browser integration.

## Upgrade / uninstall

```bash
brew update
brew upgrade smaller-please
```

```bash
brew uninstall smaller-please
```

`brew uninstall` removes only Homebrew-managed files. Your config, cache/store, staged extension,
Native Host files, and Chrome data are left in place. To also remove the program and integration
files, run `smaller uninstall`.

## Media engine

FFmpeg is **not** a dependency of this formula. `smaller setup` uses an existing compatible
FFmpeg (for example a Homebrew one) or the optional LGPL Media Pack; it never downloads a Media
Pack and never installs Homebrew.

## License

MIT — see [LICENSE](LICENSE).
