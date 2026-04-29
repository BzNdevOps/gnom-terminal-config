# Installed Terminal Addons & Tools

## GNOME Terminal — System Packages

| Package | Version | Role |
|---|---|---|
| gnome-terminal | 3.52.0 | Terminal emulator |
| gnome-terminal-data | 3.52.0 | UI/data files |
| nautilus-extension-gnome-terminal | 3.52.0 | "Open Terminal Here" in Nautilus |
| libvte-2.91 | 0.76.0 | VTE rendering engine |

## Shell Framework — Oh My Bash

**Theme:** `powerline-multiline`

### Active Plugins

| Plugin | What it does |
|---|---|
| git | Git aliases and prompt info |
| sudo | Double `Esc` to prepend sudo to last command |
| progress | Progress bar for `cp`, `mv`, `dd`, etc. |
| colored-man-pages | Colorized man pages |
| fzf | Fuzzy finder — `Ctrl+R` history search, `Ctrl+T` file search |
| zoxide | Smart `cd` — jumps to frecent dirs by partial name |

### Active Completions

- git
- ssh

### Active Aliases

- general

## Standalone Productivity Tools

| Tool | Version | How installed | Wired in |
|---|---|---|---|
| fzf | 0.44.1 | apt | oh-my-bash plugin + `Ctrl+R` |
| zoxide | 0.9.3 | apt | oh-my-bash plugin + `eval "$(zoxide init bash)"` in `.bashrc` |

## GNOME Shell Extensions (active)

| Extension | Role |
|---|---|
| ding | Desktop icons |
| ubuntu-dock | Side application dock |
| tiling-assistant | Window tiling helper |

## Font

- **Hack Nerd Font 12** — custom, installed manually

## Removed (cleanup)

| Plugin | Reason removed |
|---|---|
| bashmarks | Redundant with zoxide |
| tmux | Not used — using Zellij instead |
| pyenv | Not in daily use, added startup overhead |
| npm | Situational, not daily |
| aws | Situational, not daily |
| kubectl | Situational, not daily |
| composer (completion) | PHP tool, unused |

## Recommended — Not Yet Installed

| Tool | What it adds |
|---|---|
| bat | `cat` with syntax highlighting |
| eza | Modern `ls` with icons, colors, git status |
| delta | Syntax-highlighted `git diff` |
| starship | Faster, richer shell prompt |
