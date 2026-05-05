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

### Custom Aliases (bashrc)

| Alias | Expands to | Purpose |
|---|---|---|
| `bat` / `cat` | `batcat` | Syntax-highlighted file viewer |
| `ls` | `eza --icons --group-directories-first` | Modern directory listing |
| `ll` | `eza -la --icons --group-directories-first` | Detailed listing |
| `lt` | `eza --tree --icons --group-directories-first` | Tree view |
| `grep` | `rg` | Fast file search |
| `copy` | `wl-copy` | Pipe output to clipboard |
| `paste` | `wl-paste` | Print clipboard to terminal |
| `cdf` | `cd $(find . -type d \| fzf)` | Fuzzy folder jump |

## Standalone Productivity Tools

| Tool | Version | How installed | Wired in |
|---|---|---|---|
| fzf | 0.44.1 | apt | oh-my-bash plugin + `Ctrl+R` |
| zoxide | 0.9.3 | apt | oh-my-bash plugin + `eval "$(zoxide init bash)"` in `.bashrc` |
| bat | 0.24.0 | apt | `alias cat='batcat'`, `alias bat='batcat'` in `.bashrc` |
| eza | 0.18.2 | apt | `alias ls='eza --icons'`, `alias ll='eza -la --icons'`, `alias lt='eza --tree --icons'` |
| ripgrep | 14.1.0 | apt | `alias grep='rg'` in `.bashrc` |
| tldr | latest | npm | `tldr <command>` for quick usage examples (apt version broken — use npm) |
| wl-clipboard | 2.2.1 | apt | `alias copy='wl-copy'`, `alias paste='wl-paste'` — pipe output to clipboard |

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
| git | Not needed — using git CLI directly |
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
| starship | Faster, richer shell prompt (replaces Oh My Bash entirely) |
