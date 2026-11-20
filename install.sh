#!/bin/sh
# Lidless installer: downloads the latest release for this machine, checks
# its SHA-256 against the release's checksum file, and installs `lidless`.
#   curl -fsSL https://raw.githubusercontent.com/Matiyas-H/lidless-installer/main/install.sh | sh
set -eu
REPO="Matiyas-H/lidless-installer"
VERSION="${LIDLESS_VERSION:-latest}"

os=$(uname -s | tr '[:upper:]' '[:lower:]')
case "$os" in darwin|linux) ;; *) echo "lidless: unsupported OS $os" >&2; exit 1 ;; esac
arch=$(uname -m)
case "$arch" in x86_64|amd64) arch=amd64 ;; arm64|aarch64) arch=arm64 ;; *) echo "lidless: unsupported CPU $arch" >&2; exit 1 ;; esac

if [ "$VERSION" = latest ]; then
  base="https://github.com/$REPO/releases/latest/download"
else
  base="https://github.com/$REPO/releases/download/$VERSION"
fi
file="lidless_${os}_${arch}.tar.gz"
tmp=$(mktemp -d); trap 'rm -rf "$tmp"' EXIT
echo "Downloading $file"
curl -fsSL -o "$tmp/$file" "$base/$file"
curl -fsSL -o "$tmp/checksums.txt" "$base/checksums.txt"
want=$(awk -v f="$file" '$2==f {print $1}' "$tmp/checksums.txt")
if command -v sha256sum >/dev/null 2>&1; then got=$(sha256sum "$tmp/$file" | awk '{print $1}'); else got=$(shasum -a 256 "$tmp/$file" | awk '{print $1}'); fi
[ -n "$want" ] && [ "$want" = "$got" ] || { echo "lidless: checksum mismatch, not installing" >&2; exit 1; }
tar -xzf "$tmp/$file" -C "$tmp"

dest="${LIDLESS_INSTALL_DIR:-$HOME/.local/bin}"
mkdir -p "$dest"
install -m 0755 "$tmp/lidless" "$dest/lidless"
echo "Installed $dest/lidless ($("$dest/lidless" version))"
case ":$PATH:" in *":$dest:"*) ;; *) echo "Add $dest to your PATH, e.g.: echo 'export PATH=\"$dest:\$PATH\"' >> ~/.zshrc" ;; esac
if [ -f "$HOME/.lidless/config.json" ]; then
  # An update: the Claude Code plugin has to match the CLI (its hooks are
  # what keeps a session's window fenced while it is away).
  if command -v claude >/dev/null 2>&1 && "$dest/lidless" plugin >/dev/null 2>&1; then
    echo "Updated, and the Claude Code plugin with it. Claude windows opened from now on use it; in a terminal tab opened before Lidless was set up, run: exec \$SHELL"
  else
    echo "Updated. Now update the Claude Code plugin too:  lidless plugin"
  fi
else
  echo "Next: lidless setup"
fi
