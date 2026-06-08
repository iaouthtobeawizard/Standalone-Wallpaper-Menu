# Standalone Wallpaper Menu

A simple standalone wallpaper picker for Linux.

## Features

* Wallpaper previews
* Fast selection
* Lightweight
* Customizable appearance
* Hyprland-friendly

## Installation

```bash
git clone https://github.com/iaouthtobeawizard/Standalone-Wallpaper-Menu.git
cd Standalone-Wallpaper-Menu
chmod +x *.sh
```

### Add Wallpaper Directory in wallpaper.sh

```bash
EG:- WALL_DIR="$HOME/PICTURES/Wallpapers/"```


## Usage

```bash
./wallpaper-menu.sh
```

## Requirements

* [rofi](https://github.com/davatorium/rofi)
* [awww](https://codeberg.org/LGFae/awww.git)

```bash 
yay -S awww rofi --needed 
```

## Troubleshooting

### Wallpaper Not Changing

Check if awww is running:

```bash
pgrep awww-daemon
```

If no output is returned, start it:

```bash
awww-daemon &
```

Verify awww is installed:

```bash
which awww
```
