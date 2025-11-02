<div align="center">
    <h1><code>minimal-wm-config</code></h1>

**[Preview] | [Basic Keybinds] | [Dependencies] | [Install] | [Contribute]**
</div>

[Preview]: https://github.com/mubin6th/minimal-wm-config?tab=readme-ov-file#preview
[Basic Keybinds]: https://github.com/mubin6th/minimal-wm-config/?tab=readme-ov-file#basic-keybinds
[Dependencies]: https://github.com/mubin6th/minimal-wm-config/?tab=readme-ov-file#dependencies
[Install]: https://github.com/mubin6th/minimal-wm-config?tab=readme-ov-file#install
[Contribute]: https://github.com/mubin6th/minimal-wm-config?tab=readme-ov-file#contributing

## About
minimal-wm-config is a configuration for window managers in Linux. It contains
configurations for terminal, app launcher, window manager etc. minimal-wm-config is used
to configure a window-manager quickly rather than writing configurations from scratch and
can be used as base for other configurations.

minimal-wm-config is very simply written for clarity and to avoid complexity. The goal
is to write as little configuration as possible to make window managers exquisite.

<div>
<br>
<img
src="https://github.com/mubin6th/minimal-wm-config/blob/master/readme_res/preview.jpg?raw=true"
alt="preview image">
</div>

## Basic Keybinds
The Super key is the Windows key on traditional keyboards. And the Command Key on Mac
keyboards.

- **Super+Enter**: Open Terminal (alacritty).
- **Super+d**: Open Launcher (bemenu).
- **Super+s**: Take Screenshot (Drag with cursor to select section, screenshots will be saved at `$HOME/Pictures`).
- **Super+<h,j,k,l or arrow keys>**: Focus on left, bottom, top, right tiled windows respectively.
- **Super+Shift+<h,j,k,l or arrow keys>**: Swap with focused window on left, bottom, top, right tiled windows respectively.
- **Super+f**: Make focused window full-screen.
- **Super+Shift+v**: Turn focused window floating or turn focus floating window tiled.
- **Super+<mouse left click + drag>**: Move the focused floating window.
- **Super+<mouse right click + drag>**: Resize the focused floating window.
- **Super+Shift+q**: Close the focused window.
- **Super+m**: Exit Sway.

There are more keybinds then listed here. If you are interested on those, then take a
look at files ending with `_keybinds` in the `sway/` directory.

## Dependencies
```bash
# ARCH LINUX
$ yay -Sy sway swaybg swayidle alacritty fish waybar eza grim slurp bemenu

# VOID LINUX
$ sudo xbps-install -S sway swaybg swayidle alacritty fish-shell Waybar eza grim slurp bemenu

# DEBIAN LINUX (eza(is required) not available)
$ sudo apt update
$ sudo apt install sway swaybg swayidle alacritty fish waybar grim slurp bemenu
```

### Installing the font
The configuration uses the [Fira Code](https://github.com/tonsky/FiraCode) font. You can
download it from [here](https://github.com/tonsky/firacode/releases/latest). After you
have downloaded and unzipped the file, run the following command to install it:
```bash
$ mv *.ttf /usr/share/fonts/TTF
```

## Install
After cloning the repository, there are 2 methods to install minimal-wm-config.

### Automated
> [!WARNING]
> This method will automatically delete your old configurations. If
> you care about them, make sure to back them up before running the
> script.

This installation process is automated with `install.fish`. Make sure you have `fish`
shell installed. If so, `cd` into the project and run
the script with:
``` fish
$ fish install.fish
```

The Neovim configuration is not copied by default. You shall copy it manually.

### Manual
If you want to install minimal-wm-config manually, just copy the
configuration folders (i.e. `alacritty`, `fastfetch`, `fish`, `sway`,
`waybar` and optionally `nvim`) to your config folder.

## Contributing
If you would like to add features or report any bug, make an `issue`. Pull Requests are
also welcome!

Thanks to everyone using and improving minimal-wm-config.
