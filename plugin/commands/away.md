---
description: Move this session to your cloud sandbox, so you can close the laptop
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run.sh:*)"]
hide-from-slash-command-tool: "true"
---

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/run.sh" away
```

The text above is Lidless's own output. Repeat it to the user in one or two
short sentences, including that this window stays open and that typing
`back` here brings the session back. Do not run any tools and do not start
other work: this session is being moved.
