#!/bin/bash
# Auto-switches GNOME Terminal theme based on time of day
# Day: 07:00-17:59 | Sunset: 18:00-20:59 | Night: 21:00-06:59

PROFILE="$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d "'")"
SCHEMA="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${PROFILE}/"

HOUR=$(date +%H)
MODE="${1:-auto}"

log_applied() {
    printf '%s %s\n' "$(date '+%Y-%m-%d %H:%M:%S %Z')" "$1"
}

apply_day() {
    gsettings set $SCHEMA background-color '#FBF1C7'
    gsettings set $SCHEMA foreground-color '#000000'
    gsettings set $SCHEMA bold-color '#076678'
    gsettings set $SCHEMA bold-color-same-as-fg false
    gsettings set $SCHEMA cursor-background-color '#000000'
    gsettings set $SCHEMA cursor-foreground-color '#FBF1C7'
    gsettings set $SCHEMA highlight-background-color '#D79921'
    gsettings set $SCHEMA highlight-foreground-color '#1D2021'
    gsettings set $SCHEMA use-theme-colors false
    gsettings set $SCHEMA palette "['#000000','#CC241D','#79740E','#B57614','#076678','#8F3F71','#427B58','#D5C4A1','#3C3836','#9D0006','#98971A','#D79921','#458588','#B16286','#689D6A','#FBF1C7']"
    log_applied "Applied: Day theme"
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
    log_applied "Applied: Sunset theme"
}

apply_night() {
    gsettings set $SCHEMA background-color '#1E1E2E'
    gsettings set $SCHEMA foreground-color '#CDD6F4'
    gsettings set $SCHEMA bold-color '#89B4FA'
    gsettings set $SCHEMA bold-color-same-as-fg false
    gsettings set $SCHEMA cursor-background-color '#F5E0DC'
    gsettings set $SCHEMA cursor-foreground-color '#1E1E2E'
    gsettings set $SCHEMA highlight-background-color '#F5C2E7'
    gsettings set $SCHEMA highlight-foreground-color '#1E1E2E'
    gsettings set $SCHEMA use-theme-colors false
    gsettings set $SCHEMA palette "['#45475A','#F38BA8','#A6E3A1','#F9E2AF','#89B4FA','#F5C2E7','#94E2D5','#BAC2DE','#585B70','#F38BA8','#A6E3A1','#F9E2AF','#89B4FA','#F5C2E7','#94E2D5','#A6ADC8']"
    log_applied "Applied: Night theme (Catppuccin Mocha)"
}

case "$MODE" in
    day|light)
        apply_day
        ;;
    sunset)
        apply_sunset
        ;;
    night)
        apply_night
        ;;
    auto)
        if   [ "$HOUR" -ge 7  ] && [ "$HOUR" -le 17 ]; then
            apply_day
        elif [ "$HOUR" -ge 18 ] && [ "$HOUR" -le 20 ]; then
            apply_sunset
        else
            apply_night
        fi
        ;;
    *)
        echo "Usage: $0 [auto|day|light|sunset|night]" >&2
        exit 2
        ;;
esac
