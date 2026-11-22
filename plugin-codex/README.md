# Lidless plugin for Codex CLI

- `$lidless-away` (or the words `lidless away`): move this session to your
  cloud sandbox. Codex keeps hold of a session for as long as its window
  runs, so Lidless asks you to quit Codex (Ctrl+C twice); the move then
  starts in the same terminal and says when the laptop can be closed.
- In that terminal, Enter (or `lidless back`) brings the session home and
  opens Codex on it again.
- `$lidless-status`: which sessions are in the cloud; is the sandbox ready.

Codex asks you to approve a plugin's hook before it runs: type `/hooks` in
Codex once and trust the Lidless one. Without it the commands still work,
through Codex itself, a little slower.

Needs the `lidless` CLI (`lidless join` or `lidless setup` installs this
plugin for you) and Codex signed in inside your sandbox
(`lidless signin codex`).
