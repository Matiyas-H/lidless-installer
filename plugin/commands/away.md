---
description: Move this session to your cloud sandbox, so you can close the laptop
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run.sh:*)"]
hide-from-slash-command-tool: "true"
---

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/run.sh" away
```

The text above is Lidless's own output. Repeat it to the user in one or two
short sentences. Do not run any tools and do not start other work: this
session is being moved and this window will close by itself.
