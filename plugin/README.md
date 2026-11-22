# Lidless plugin for Claude Code

- `/lidless:away`: move this session to your cloud sandbox. The window stays
  open and says when it is safe to close the laptop.
- `back` (or `/lidless:back`): bring the session home, in the same window.
- `/lidless:yes`, `/lidless:no`: answer what a move asked first (secret
  files, a large first move, a folder without git).
- `/lidless:status`: which sessions are in the cloud; is the sandbox ready.
- `/lidless:signin`: sign in to Claude inside your sandbox.
- A guard: what is typed into a session that is in the cloud is held, with
  a hint to bring it back (two copies of a conversation cannot be merged).

A window keeps the plugin version it was started with: after an update,
quit Claude and open it again to get new commands.

Needs the `lidless` CLI (`lidless join` or `lidless setup` installs this
plugin for you).
