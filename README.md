# Smaller, Please Homebrew Tap

This repository contains the official Homebrew formula for **Smaller, Please**.

The formula installs the `smaller` CLI, the current extension payload, and the bundled Agent Skill. It requires macOS 12+ on Apple Silicon (arm64); Intel architecture is explicitly refused.

## Install

```bash
brew tap wberry9813/smaller-please
brew install smaller-please
```

## Post-Install

Homebrew itself does not edit your Chrome profile. You must manually run setup to configure your user environment and stage the extension:

```bash
smaller setup
smaller doctor
smaller extension path
```

Then, load the extension into Chrome:
1. Open `chrome://extensions` in Google Chrome.
2. Enable **Developer mode** in the top right.
3. Click **Load unpacked** and select the folder printed by `smaller extension path` (typically `~/Applications/Smaller Please Extension`).

## Upgrade

```bash
brew update
brew upgrade smaller-please
smaller setup
```

After upgrading, refresh the extension in Chrome on the `chrome://extensions` page.

## Uninstall

To remove only the files managed by Homebrew (the CLI and shared payload):
```bash
brew uninstall smaller-please
```

To fully remove the program and its integration files (including the staged extension and native host), run `smaller uninstall` before removing the formula.

## AI Agent Skills

The Homebrew install includes the Smaller, Please Agent Skill. Get the AI configuration
instruction with:

```bash
smaller get skills
```

Give the output to your AI agent; the agent configures the Skill for its environment.

## Documentation and Support

Full product documentation lives in the main repository: [wberry9813/Smaller-Please](https://github.com/wberry9813/Smaller-Please).

**Website:** [https://smaller-please.inchmirror.studio](https://smaller-please.inchmirror.studio)  
**License:** MIT
