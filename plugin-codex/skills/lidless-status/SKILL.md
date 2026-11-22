---
name: lidless-status
description: Show which of the user's sessions are in their Lidless cloud sandbox and whether the sandbox is ready. Use only when the user asks for it by name ($lidless-status, "lidless status").
---

# Lidless: status

Lidless answers this itself, before the message reaches you. You are
reading this, so that did not happen: Lidless's hook is not trusted in
this Codex yet.

Do not run any command (Lidless needs the network, which Codex's command
sandbox does not give it). Tell the user, in one or two short lines: type
`/hooks` in Codex and trust the Lidless hook, then send `$lidless-status`
again; or run `lidless status` in a terminal.
