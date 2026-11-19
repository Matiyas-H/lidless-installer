---
description: Sign in to Claude inside your cloud sandbox (opens a terminal window with Claude's own sign-in)
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run.sh:*)"]
hide-from-slash-command-tool: "true"
---

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/run.sh" signin
```

The text above is Lidless's own output. Tell the user in one short line what
happened (normally: a terminal window opened with Claude's sign-in; sign in
there and press Ctrl+] when done). Do not run any tools.
