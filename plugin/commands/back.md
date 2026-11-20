---
description: Bring this folder's cloud session back to the laptop and merge the cloud's work
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run.sh:*)"]
hide-from-slash-command-tool: "true"
---

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/run.sh" back
```

The text above is Lidless's own output. Repeat it to the user briefly, in
plain words. If it says a Claude window of the session closes and reopens,
say so. Otherwise, if it says a session came back, add that it continues in a new terminal with the
`claude --resume ...` command shown above (this window is a different
session). Do not run any tools.
