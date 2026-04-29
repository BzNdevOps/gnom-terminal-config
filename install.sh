#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install auto-theme switcher
mkdir -p "$HOME/scripts"
cp "$SCRIPT_DIR/scripts/terminal-theme.sh" "$HOME/scripts/terminal-theme.sh"
chmod +x "$HOME/scripts/terminal-theme.sh"

# Import GNOME Terminal profile
dconf load /org/gnome/terminal/ < "$SCRIPT_DIR/profiles/gnome-terminal.dconf"

# Set up cron job (every 30 min)
CRON_JOB="*/30 * * * * DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus $HOME/scripts/terminal-theme.sh >> $HOME/scripts/terminal-theme.log 2>&1"
( crontab -l 2>/dev/null | grep -v "terminal-theme.sh"; echo "$CRON_JOB" ) | crontab -

echo "Done."
echo "  - terminal-theme.sh installed to ~/scripts/"
echo "  - GNOME Terminal profile imported"
echo "  - Cron job registered (every 30 min)"
