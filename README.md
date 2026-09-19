# Smaller Please Homebrew Tap

A Homebrew tap for the **Smaller Please** macOS beta — a local-first tool that makes images
and videos smaller before they are uploaded to AI apps such as ChatGPT and Claude.

Homepage: <https://github.com/wberry9813/Smaller-Please>

## Installation

```bash
brew tap wberry9813/smaller-please
brew trust wberry9813/smaller-please
brew install --cask smaller-please
```

Homebrew requires third-party taps to be **trusted explicitly** before their casks can be
loaded, so `brew trust` is a one-time confirmation for this tap. On older Homebrew versions the
`brew trust` step is not needed.

`Smaller Please Installer.app` is installed to `/Applications`. It is the **installer**: open it
once to install Smaller Please Core, the Media Engine, the Native Host, and the browser extension
files, then add the extension in Chrome (`chrome://extensions` → **Developer mode** →
**Load unpacked** → `~/Applications/Smaller Please Extension`).

## Upgrade

```bash
brew update
brew upgrade --cask smaller-please
```

After an upgrade, re-run the installer and reload the extension in `chrome://extensions`.

## Uninstall

```bash
brew uninstall --cask smaller-please
```

This removes only the installer app that Homebrew installed. To also remove the program and
integration files that the installer created, run:

```bash
smaller uninstall
```

Your configuration, cached data, and browser-local history are kept by default.

## Beta note

This is an early **beta** release for **macOS Apple Silicon (arm64)** only. Intel Macs and
Windows are not supported yet.

## Requirements

- macOS 12 (Monterey) or later on Apple Silicon (arm64).
- Google Chrome for the browser integration.

## About this tap

This repository contains only the Homebrew cask definition. It ships no binaries, no disk
images, and no source code; the installer is downloaded from the
[Smaller Please releases](https://github.com/wberry9813/Smaller-Please/releases) page.

### Publishing a future version

A new version only requires updating three lines in `Casks/smaller-please.rb`:

- `version` — the new release version (for example `0.1.0-beta.4`).
- `sha256` — the SHA-256 of the new installer DMG.
- `url` — the new release download URL.

No automation is set up yet; the cask is updated by hand.
