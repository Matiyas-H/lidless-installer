# Lidless plugin for Claude Code

- `/lidless:away`: move this session to your cloud sandbox. The window closes
  by itself when the cloud copy is running; you get a notification when you
  can close the laptop. Press Enter in the same terminal tab to bring it back.
- `/lidless:back`: bring this folder's cloud session back from any other
  Claude Code session (or run `lidless back` in a terminal).
- `/lidless:status`: which sessions are in the cloud; is the sandbox ready.
- A prompt guard: typing into a session that is in the cloud is stopped with
  a hint to bring it back first (two copies of a conversation cannot be merged).

Needs the `lidless` CLI (`lidless setup` installs this plugin for you).
