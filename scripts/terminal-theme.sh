#!/bin/bash
# Auto-switches GNOME Terminal theme based on time of day
# Day: 07:00-17:59 | Sunset: 18:00-20:59 | Night: 21:00-06:59

PROFILE="b1dcc9dd-5262-4d8d-a863-c897e6d979b9"
SCHEMA="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${PROFILE}/"

HOUR=$(date +%H)

apply_day() {
    gsettings set $SCHEMA background-color '#F8F8F2'
    gsettings set $SCHEMA foreground-color '#2D2D2D'
    gsettings set $SCHEMA bold-color '#005F87'
    gsettings set $SCHEMA bold-color-same-as-fg false
    gsettings set $SCHEMA cursor-background-color '#2D2D2D'
    gsettings set $SCHEMA cursor-foreground-color '#F8F8F2'
    gsettings set $SCHEMA highlight-background-color '#2D5FA0'
    gsettings set $SCHEMA highlight-foreground-color '#FFFFFF'
    gsettings set $SCHEMA use-theme-colors false
    gsettings set $SCHEMA palette "['#2D2D2D','#CC0000','#4E9A06','#C4A000','#3465A4','#75507B','#06989A','#D3D7CF','#555753','#EF2929','#8AE234','#FCE94F','#729FCF','#AD7FA8','#34E2E2','#EEEEEC']"
    echo "Applied: Day theme"
}

apply_sunset() {
    gsettings set $SCHEMA background-color '#1C0F00'
    gsettings set $SCHEMA foreground-color '#FFD7A0'
    gsettings set $SCHEMA bold-color '#FF8C00'
    gsettings set $SCHEMA bold-color-same-as-fg false
    gsettings set $SCHEMA cursor-background-color '#FF8C00'
    gsettings set $SCHEMA cursor-foreground-color '#1C0F00'
    gsettings set $SCHEMA highlight-background-color '#FF6000'
    gsettings set $SCHEMA highlight-foreground-color '#FFFFFF'
    gsettings set $SCHEMA use-theme-colors false
    gsettings set $SCHEMA palette "['#1C0F00','#FF4500','#D4A017','#FF8C00','#C86400','#FF6347','#E8A000','#FFD7A0','#4A2800','#FF6B35','#F5C842','#FFA500','#E07020','#FF7F50','#FFB347','#FFF0D0']"
    echo "Applied: Sunset theme"
}

apply_night() {
    gsettings set $SCHEMA background-color '#282a36'
    gsettings set $SCHEMA foreground-color '#f8f8f2'
    gsettings set $SCHEMA bold-color '#6e46a4'
    gsettings set $SCHEMA bold-color-same-as-fg false
    gsettings set $SCHEMA cursor-background-color '#f8f8f2'
    gsettings set $SCHEMA cursor-foreground-color '#282a36'
    gsettings set $SCHEMA highlight-background-color '#bd93f9'
    gsettings set $SCHEMA highlight-foreground-color '#282a36'
    gsettings set $SCHEMA use-theme-colors false
    gsettings set $SCHEMA palette "['#21222c','#ff5555','#50fa7b','#f1fa8c','#bd93f9','#ff79c6','#8be9fd','#f8f8f2','#6272a4','#ff6e6e','#69ff94','#ffffa5','#d6acff','#ff92df','#a4ffff','#ffffff']"
    echo "Applied: Night theme (Dracula)"
}

if   [ "$HOUR" -ge 7  ] && [ "$HOUR" -le 17 ]; then
    apply_day
elif [ "$HOUR" -ge 18 ] && [ "$HOUR" -le 20 ]; then
    apply_sunset
else
    apply_night
fi
