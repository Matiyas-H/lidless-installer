#!/bin/sh
# Runs the installed lidless CLI. Claude Code may start with a shorter PATH
# than the user's shell, so the usual install locations are tried too.
# Which plugin this window runs (its folder is named after the version):
# what Lidless tells the user to type depends on what this window knows.
LIDLESS_PLUGIN_ROOT="$(cd "$(dirname "$0")/.." 2>/dev/null && pwd)"; export LIDLESS_PLUGIN_ROOT
# "doctor-look": doctor that only looks (the status command's; a CLI from
# before reads no variable and does as it did).
if [ "${1:-}" = doctor-look ]; then shift; set -- doctor "$@"; LIDLESS_DOCTOR_LOOK=1; export LIDLESS_DOCTOR_LOOK; fi
for c in "$(command -v lidless 2>/dev/null)" "$HOME/.local/bin/lidless" /opt/homebrew/bin/lidless /usr/local/bin/lidless; do
  [ -n "$c" ] && [ -x "$c" ] && exec "$c" "$@"
done
# The guard must never block prompts just because the CLI is missing.
case "${1:-}" in guard|session-start|sync) exit 0 ;; esac
echo "Lidless is not installed. Install it with: curl -fsSL https://raw.githubusercontent.com/Matiyas-H/lidless-installer/main/install.sh | sh"
exit 1
