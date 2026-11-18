# Lidless

Move a running Claude Code session from your laptop to your own cloud
sandbox, close the laptop, keep going from your phone, and bring it back.

This repository holds the released `lidless` command-line tool only.

## Install

Homebrew (macOS, Linux):

```sh
brew tap Matiyas-H/lidless-installer https://github.com/Matiyas-H/lidless-installer
brew install Matiyas-H/lidless-installer/lidless
```

Or the install script (checks the download's SHA-256 before installing):

```sh
curl -fsSL https://raw.githubusercontent.com/Matiyas-H/lidless-installer/main/install.sh | sh
```

## Use

```sh
lidless setup     # once
lidless signin    # once: sign in to Claude inside your sandbox
```

Then type `/lidless` in Claude Code to send the session to the cloud, and
press Enter in the same terminal tab to bring it back.
