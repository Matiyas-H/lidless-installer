---
name: lidless-away
description: Move this Codex session to the user's cloud sandbox with Lidless, so they can close the laptop. Use only when the user asks for it by name ($lidless-away, "lidless away"); never on your own.
---

# Lidless: move this session to the cloud

Lidless carries this out itself, before the message reaches you (the
message is then held and you never see it). You are reading this, so that
did not happen: Lidless's hook is not trusted in this Codex yet.

Do not run any command: from inside Codex's command sandbox Lidless cannot
see this session. Tell the user exactly this, in your own short words:

1. Type `/hooks` in Codex and trust the Lidless hook, then send
   `$lidless-away` again. That is all it takes from then on.
2. Or, without the hook: quit Codex (Ctrl+C twice) and run `lidless away`
   in the same terminal.

Do nothing else in this turn.
