# Dotfiles (Arch Linux)

My personal dotfiles for an Arch Linux setup running Hyprland with an amber terminal aesthetic.

## Dependencies

- `stow` — symlink manager
- `hyprland` — window manager
- `waybar` — status bar
- `kitty` — terminal
- `hyprpaper` — wallpaper daemon
- `rofi` — app launcher
- `pipewire` + `wireplumber` — audio

## Structure

```
dotfiles/
├── hypr/.config/hypr/
│   ├── hyprland.conf
│   └── hyprpaper.conf
├── waybar/.config/waybar/
│   ├── config.jsonc
│   └── style.css
├── kitty/.config/kitty/
│   └── kitty.conf
├── nvim/.config/nvim/
├── rofi/.config/rofi/
│   ├── config.rasi
│   └── themes/
├── packages.txt
└── install.sh
```

## Install

```bash
bash <(curl -s https://gist.githubusercontent.com/Fer-Sebas/b3250ccb3194525512bbba91bc22c5bb/raw/db38ba72def728508c4b0295609c1875694e009c/arch-terminal-rice.sh)
```

This will install `stow`, clone the repo to `~/dotfiles`, and symlink all configs automatically.
