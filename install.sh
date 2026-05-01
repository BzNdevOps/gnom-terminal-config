#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install auto-theme switcher
mkdir -p "$HOME/scripts"
cp "$SCRIPT_DIR/scripts/terminal-theme.sh" "$HOME/scripts/terminal-theme.sh"
chmod +x "$HOME/scripts/terminal-theme.sh"

# Install user systemd timer. It runs shortly after login and every 5 minutes,
# which avoids stale themes after suspend or missed cron slots.
mkdir -p "$HOME/.config/systemd/user"
cp "$SCRIPT_DIR/systemd/user/gnome-terminal-theme.service" "$HOME/.config/systemd/user/gnome-terminal-theme.service"
cp "$SCRIPT_DIR/systemd/user/gnome-terminal-theme.timer" "$HOME/.config/systemd/user/gnome-terminal-theme.timer"
systemctl --user daemon-reload
systemctl --user enable --now gnome-terminal-theme.timer

# Import GNOME Terminal profile
dconf load /org/gnome/terminal/ < "$SCRIPT_DIR/profiles/gnome-terminal.dconf"
systemctl --user start gnome-terminal-theme.service

# Remove the old cron job if this installer previously registered it.
( crontab -l 2>/dev/null | grep -v "terminal-theme.sh" || true ) | crontab -

echo "Done."
echo "  - terminal-theme.sh installed to ~/scripts/"
echo "  - GNOME Terminal profile imported"
echo "  - systemd user timer enabled: gnome-terminal-theme.timer"
