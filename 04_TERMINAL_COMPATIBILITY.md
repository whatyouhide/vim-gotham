# Terminal Compatibility Guide

## Version Overview

| Version | Best For | Terminal Dependency |
|---------|----------|---------------------|
| `gotham` | GUI Vim, true color terminals | Requires terminal colorscheme |
| `gotham256` | 256-color terminals | Fixed palette, terminal-independent |

## gotham256 Requirements

The `gotham256` version includes a guard that exits early if requirements aren't met:

```viml
if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif
```

This means it requires **one of**:
- `termguicolors` enabled (true color)
- GUI running (gVim, MacVim)
- 256 color support (`t_Co == 256`)

## Setting Up Terminal Colorschemes

For `gotham` (non-256) to look correct, your terminal emulator must use the Gotham color scheme.

### gotham-contrib

Supported platforms are documented in the [gotham-contrib](https://github.com/whatyouhide/gotham-contrib) repository:

- iTerm2 (macOS)
- Terminal.app (macOS)
- Guake (Linux)
- Terminator (Linux)
- Xresources (Linux)
- PuTTY (Windows)
- and more...

## Neovim :terminal Integration

Gotham sets Neovim's terminal palette colors via `g:terminal_color_*` variables:

```viml
let g:terminal_color_0  = '#0c1014'  " base0
let g:terminal_color_1  = '#c23127'  " red
let g:terminal_color_2  = '#2aa889'  " green
let g:terminal_color_3  = '#edb443'  " yellow
let g:terminal_color_4  = '#195466'  " blue
let g:terminal_color_5  = '#4e5166'  " violet
let g:terminal_color_6  = '#33859E'  " cyan
let g:terminal_color_7  = '#99d1ce'  " base6
let g:terminal_color_8  = '#0c1014'  " base0 (bright)
let g:terminal_color_9  = '#c23127'  " red (bright)
let g:terminal_color_10 = '#2aa889'  " green (bright)
let g:terminal_color_11 = '#edb443'  " yellow (bright)
let g:terminal_color_12 = '#195466'  " blue (bright)
let g:terminal_color_13 = '#4e5166'  " violet (bright)
let g:terminal_color_14 = '#33859E'  " cyan (bright)
let g:terminal_color_15 = '#d3ebe9'  " base7
```

## True Color Support

Modern terminals supporting 24-bit color (true color):

| Terminal | Support |
|----------|---------|
| iTerm2 (macOS) | Yes |
| Konsole (Linux) | Yes |
| GNOME Terminal | Yes (with tweaks) |
| Windows Terminal | Yes |
| Alacritty | Yes |
| Kitty | Yes |
| tmux | Requires `set -g default-terminal "screen-256color"` |

Enable true color in Neovim:
```viml
set termguicolors
```

## Vim vs Neovim Differences

| Feature | Vim | Neovim |
|---------|-----|--------|
| GUI colors | Full hex | Full hex |
| 256 colors | cterm | cterm |
| True color | Via GUI | Via termguicolors |
| Terminal palette | N/A | `g:terminal_color_*` |

## tmux Configuration

For proper colors in tmux sessions:

```bash
# In ~/.tmux.conf
set -g default-terminal "screen-256color"
set -ga terminal-overrides ",xterm-256color:Tc"
```

## SSH Session Colors

When using Vim over SSH, ensure:
1. Terminal supports 256 colors (`echo $TERM`)
2. SSH config has `ForwardX11Trusted yes` for true color
3. Server-side TERM matches capabilities

## Troubleshooting

### Colors Look Washed Out
- Enable true color: `set termguicolors`
- Ensure terminal supports 24-bit color

### Only 16 Colors Showing
- Use `gotham256` variant instead of `gotham`
- Verify `$TERM` is set to a 256-color terminal

### SSH Session Has Wrong Colors
1. Ensure terminal supports 256 colors: `echo $TERM`
2. Use `ForwardX11Trusted yes` in SSH config for true color
3. Consider using `-Y` flag instead of `-X` for trusted forwarding

### tmux Colors Broken
Ensure tmux.conf has:
```bash
set -g default-terminal "screen-256color"
set -ga terminal-overrides ",xterm-256color:Tc"
```

If colors are still wrong in tmux, add:
```bash
set -ga terminal-overrides ",xterm-256color:Tc:smcup@:rmcup@"
```

Then restart tmux completely:
```bash
tmux kill-server && tmux
```

### Neovim in tmux
When using Neovim inside tmux, you may need additional configuration:

1. Ensure `termguicolors` is set in Neovim:
```vim
set termguicolors
```

2. If colors still appear wrong, add to tmux.conf:
```bash
set -ga terminal-overrides ",xterm-256color:Tc:smcup@:rmcup@"
```

3. Restart tmux completely: `tmux kill-server && tmux`
