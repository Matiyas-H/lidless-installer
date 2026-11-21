---
description: Move this session to your cloud sandbox, so you can close the laptop
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run.sh:*)"]
hide-from-slash-command-tool: "true"
---

Lidless carries this command out itself, before it reaches you, and adds a
note that starts with `Lidless:` to this message.

If that note is here, the move is done: follow the note and do nothing else.

If there is no such note, run
`"${CLAUDE_PLUGIN_ROOT}/scripts/run.sh" away` with the Bash tool and tell
the user, in one or two short sentences, what it printed.
