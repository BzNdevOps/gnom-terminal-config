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
| bashmarks | Directory bookmarks (`s`, `g`, `p`, `d`, `l`) |
| sudo | Double `Esc` to prepend sudo to last command |
| progress | Progress bar for `cp`, `mv`, `dd`, etc. |
| pyenv | Python version management |
| tmux | tmux helpers |
| colored-man-pages | Colorized man pages |
| npm | npm completions and aliases |
| aws | AWS CLI completions |
| kubectl | kubectl completions |
| fzf | Fuzzy finder integration |
| zoxide | Smart cd integration |

### Active Completions

- git
- composer
- ssh

### Active Aliases

- general

## Standalone Productivity Tools

| Tool | Version | How installed | Wired in |
|---|---|---|---|
| fzf | 0.44.1 | apt | oh-my-bash plugin + `Ctrl+R` history search |
| zoxide | 0.9.3 | apt | oh-my-bash plugin + `eval "$(zoxide init bash)"` in `.bashrc` |

## GNOME Shell Extensions (active)

| Extension | Role |
|---|---|
| ding | Desktop icons |
| ubuntu-dock | Side application dock |
| tiling-assistant | Window tiling helper |

## Font

- **Hack Nerd Font 12** — custom, installed manually

## Missing / Recommended (not yet installed)

| Tool | What it adds |
|---|---|
| bat | `cat` with syntax highlighting |
| eza | Modern `ls` with icons, colors, git status |
| delta | Syntax-highlighted `git diff` |
| starship | Faster, richer shell prompt |
