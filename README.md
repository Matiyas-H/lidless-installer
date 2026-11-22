# Lidless

Move a running Claude Code session from your laptop to your own cloud
sandbox, close the laptop, keep going from your phone, and bring it back.
The Claude window stays open the whole time; nothing restarts.

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

## Get a sandbox

With an invitation from whoever runs your installation:

```sh
lidless join LJ1...   # once: makes your key, waits while your sandbox is made
lidless signin        # once: sign in to Claude inside your sandbox
```

(If you run the installation yourself: `lidless setup`, then `lidless signin`.)

## Use

In a Claude Code window:

| Type | What happens |
|---|---|
| `/lidless:away` | The session moves to your sandbox. The window says "In the cloud. Safe to close the laptop." and stays open. |
| `back` | The session comes home, in the same window, with an account of what was done in the cloud. |
| `/lidless:status` | What is in the cloud, what stayed on the laptop, and any move under way. |

While a session is away, what you type in its window is held, so the two
copies cannot drift apart.

If a move needs an answer first (a large first move, secret files, a folder
without git), it says what it found and moves nothing until you answer:
`/lidless:yes` or `/lidless:no`. In a window that was opened before an
update, the same answers are `/lidless:away yes` and `/lidless:away no`;
the question shows whichever form that window can run.

## Codex (new, from a terminal)

A Codex session moves too, for now by its id from a terminal, not yet
from inside the Codex window:

```sh
lidless allow chatgpt.com auth.openai.com api.openai.com   # once
lidless signin codex    # once: Codex's own sign-in in your sandbox (a one-time code)
lidless agents          # lists your Codex sessions and their ids
lidless away SESSION    # the session moves; Codex here refuses to continue it meanwhile
lidless away --then "finish the tests and commit" SESSION   # ... and starts on this at once
lidless back SESSION    # it comes home; continue it in Codex as before
```

## What travels

- A git project: what git lists, its history, and the conversation.
- Secret files (`.env`, keys) only if you say yes; they are encrypted on
  the way and where they are kept, and the agent in the cloud can read them
  as it can on your laptop. `lidless secrets` lists them.
- A folder without git: decided by the kind of project; a `.lidlessignore`
  file (gitignore syntax) says the rest. `lidless gitignore` prints a
  starting `.gitignore` if you want one.
- `lidless carry FOLDER` always takes a folder along; `lidless leave FOLDER`
  never does.
- MCP servers: a move names each one and says whether it goes along. A
  remote server does once its host is allowed (`lidless allow
  mcp.example.com`), one started with `npx` once packages are (`lidless
  allow packages`). A server that is given a secret, or that runs a
  program of your laptop, stays. `lidless cloud-state` shows what each
  did in the cloud.

Everything is encrypted with a key that only your laptop holds before it
leaves the laptop. Back it up once: `lidless key backup`.

## If something goes wrong

- **The network goes away during a move:** the tab's title says "Waiting
  for the network (gives up at ...)". It waits two minutes. Back in time, it
  goes on; if not, it stops and the session is still where it was. Give the
  command again when you are online.
- **A move was interrupted in its last step** (the laptop lost power): the
  window is held, and the next thing you type finishes the move or undoes
  it.
- **After a return you want the laptop as it was before:** `lidless undo`.
- **Anything else:** `lidless doctor` checks your sandbox; `lidless help`
  lists every command.
