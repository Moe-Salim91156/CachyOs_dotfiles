#!/usr/bin/env bash
# ============================================================
# setup.sh — symlink CachyOs_dotfiles into ~/.config
# Run from: ~/CachyOs_dotfiles/
# Usage: bash setup.sh
# ============================================================

set -e

DOTFILES="$HOME/CachyOs_dotfiles"
CONFIG="$HOME/.config"

echo "→ Creating config directories..."
mkdir -p "$CONFIG/hypr"
mkdir -p "$CONFIG/waybar"

echo "→ Symlinking hypr configs..."
ln -sf "$DOTFILES/hypr/hyprland.conf"  "$CONFIG/hypr/hyprland.conf"
ln -sf "$DOTFILES/hypr/hyprpaper.conf" "$CONFIG/hypr/hyprpaper.conf"

echo "→ Symlinking waybar configs..."
ln -sf "$DOTFILES/waybar/config.jsonc" "$CONFIG/waybar/config.jsonc"
ln -sf "$DOTFILES/waybar/style.css"    "$CONFIG/waybar/style.css"

echo ""
echo "✓ Done. Current symlinks:"
ls -la "$CONFIG/hypr/"
ls -la "$CONFIG/waybar/"

echo ""
echo "⚠  Make sure these packages are installed:"
echo "   hyprland hyprpaper waybar dunst wofi kitty"
echo "   pipewire wireplumber brightnessctl grimblast"
echo "   wl-clipboard cliphist nerd-fonts-jetbrains-mono"
