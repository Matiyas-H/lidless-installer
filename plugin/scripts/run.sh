#!/bin/sh
# Runs the installed lidless CLI. Claude Code may start with a shorter PATH
# than the user's shell, so the usual install locations are tried too.
for c in "$(command -v lidless 2>/dev/null)" "$HOME/.local/bin/lidless" /opt/homebrew/bin/lidless /usr/local/bin/lidless; do
  [ -n "$c" ] && [ -x "$c" ] && exec "$c" "$@"
done
# The guard must never block prompts just because the CLI is missing.
case "${1:-}" in guard|session-start|sync) exit 0 ;; esac
echo "Lidless is not installed. Install it with: curl -fsSL https://raw.githubusercontent.com/Matiyas-H/lidless-installer/main/install.sh | sh"
exit 1
