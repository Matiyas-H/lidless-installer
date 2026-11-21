---
description: Bring this session back from your cloud sandbox to this laptop
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run.sh:*)"]
hide-from-slash-command-tool: "true"
---

Lidless carries this command out itself, before it reaches you, and adds a
note that starts with `Lidless:` to this message.

If that note is here, the session is back: follow the note and do nothing
else.

If there is no such note, this window's own session was not in the cloud.
Run `"${CLAUDE_PLUGIN_ROOT}/scripts/run.sh" back` with the Bash tool (it
brings back a session of this folder that is in the cloud, if there is
one) and tell the user briefly what it printed.
