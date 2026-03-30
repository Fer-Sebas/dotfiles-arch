#!/usr/bin/env bash
# install.sh — dotfiles bootstrap for antares (azure)
# Usage: bash install.sh

set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

PACKAGES=(
  waybar
  hypr
  kitty
  nvim
  rofi
  shell
)

echo "==> Dotfiles dir: $DOTFILES_DIR"

# ── 1. Install stow if missing ────────────────────────────────────────────────
if ! command -v stow &>/dev/null; then
  echo "==> Installing stow..."
  sudo pacman -S --noconfirm stow
else
  echo "==> stow already installed"
fi

# ── 2. Stow each package ──────────────────────────────────────────────────────
for pkg in "${PACKAGES[@]}"; do
  if [ -d "$DOTFILES_DIR/$pkg" ]; then
    echo "==> Stowing $pkg..."
    stow --dir="$DOTFILES_DIR" --target="$HOME" --restow "$pkg"
  else
    echo "    [skip] $pkg/ not found"
  fi
done

echo ""
echo "✓ Done. All packages stowed."
