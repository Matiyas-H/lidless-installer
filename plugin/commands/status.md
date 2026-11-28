---
description: Show which sessions are in your cloud sandbox and whether the sandbox is ready
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run.sh:*)"]
hide-from-slash-command-tool: "true"
---

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/run.sh" status; "${CLAUDE_PLUGIN_ROOT}/scripts/run.sh" doctor-look
```

The text above is Lidless's own output. Summarise it for the user in two or
three short lines: which sessions are in the cloud, and whether the sandbox
is ready (anything marked ✗ and how to fix it). Do not run any tools.
