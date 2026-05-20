# Dotfiles

> [!CAUTION]
> This repository has been archived.
> I now use NixOS and see no need in maintaining this.

## Description
Configuration for [Arch Linux](https://archlinux.org/).


## Prerequisites

You need to install these manually:
- [Git](https://git-scm.com/) to clone this repository.
- [Zsh](https://www.zsh.org/) to run `install.zsh`.
- An AUR helper. Set AUR_HELPER to its name during installation, then modify `personal.zshenv` to set it there.


To install the following, run `deps.zsh`.

> [!NOTE]
> `install.zsh` automatically runs `deps.zsh`.

- [Kitty](https://sw.kovidgoyal.net/kitty/) - Terminal.
- [Hyprland](https://hypr.land/) - Window manager.
- [Hyprpicker](https://wiki.hypr.land/Hypr-Ecosystem/hyprpicker/) - Used to get information about a color that is on screen.
- [Hyprlock](https://wiki.hypr.land/Hypr-Ecosystem/hyprlock/) - Session lock manager.
- [btop](https://github.com/aristocratos/btop) - Resource and task manager.
- [Rofi](https://github.com/davatorium/rofi) - Selection menu. Required for `rofimoji`, but also as a clipboard selector (it can do way more too).
- [Rofimoji](https://github.com/fdw/rofimoji) - Emoji selector.
- [Swaync](https://github.com/ErikReider/SwayNotificationCenter) - Notification center.
- [Pywal16](https://github.com/eylles/pywal16)<sup>[AUR]</sup> - Theme tool that provides colors based on a passed image.
- [Yazi](https://github.com/sxyazi/yazi) - File browser. Also used for the [`pick_wallpaper.zsh`](/config/.config/hypr/scripts/pick_wallpaper.zsh) script.
- [Awww](https://codeberg.org/LGFae/awww)<sup>[AUR]</sup> - Wallpaper setter.[^1]
- [Normcap](https://github.com/dynobo/normcap)<sup>[AUR]</sup>[^2] - Copies text from a selected area on screen.

Install dependencies (you will not use these, but the configuration needs them):
- [Stow](https://www.gnu.org/software/stow/)

[^1]: `hyprpaper` is an alternative, but it is not dynamic. Meaning you have to log out to change your wallpaper. If you for some reason want it, a config for it is bundled in this repository. For more info, check the [Wallpaper](###wallpaper) section below.
[^2]: It also pulls [Grim](https://gitlab.freedesktop.org/emersion/grim) as a dependency. It is not marked as a dependency on the AUR, yet (on my machine) `Normcap` doesn't work without it (due to screenshot permission issues). `Grim` is only 45 KiB anyway.


## Installation

> [!CAUTION]
> Every directory inside [.config](./config/.config/) must not exist inside ~.
> For example, [config/.config/zsh/](./config/.config/zsh/) exists so ~/.config/zsh should not.

> [!IMPORTANT]
> Set the environment variable `AUR_HELPER` if you use an AUR helper.
> If it is not set or empty, the installation script will use `pacman`. This will fail for AUR packages (like `Pywal16`) so it is recommended that you install an AUR helper yourself.

```zsh
git clone https://github.com/Stefan-Rankovic/dotfiles ~/dotfiles
cd ~/dotfiles
AUR_HELPER="paru" # Modify this to your actual AUR helper
zsh install.zsh
```


## Customization
Add your own flavor to the configuration!

> ![NOTE]
> If you add new files, your config will never get overwritten.
> Modifying files created by this repo, except a select few (like `hyprpaper.conf`), will cause the update script to overwrite those changes.

### Wallpaper
To switch the currently displayed wallpaper, press Super+Alt+W and select your new wallpaper.

To add a new wallpaper, add it to ~/.config/hypr/wallpapers/.

> [!WARNING]
> When adding a new wallpaper, please make sure that there are no wallpapers that start with another's name.
> For example, having both `wallpaper.png` and `wallpaper.png__new_version.png`.
> Not respecting this will confuse the script [change_wallpaper.zsh](./config/.config/hypr/scripts/change_wallpaper.zsh) (in `hypr/scripts/`). That also means Super+Alt+W won't work properly.

### Zsh aliases/functions/whatever
Add to ~/.config/zsh/aliases/, ~/.config/zsh/functions, ~/.config/zsh/addons/zinit_plugins/, or wherever you feel like it fits.

> [!NOTE]
> Every file inside is sourced and its contents are not checked.
> So putting an alias inside ~/.config/zsh/functions/ is fine logic-wise.

### Nvim plugins
Create a new file in ~/.config/nvim/lua/plugins/ (the name doesn't matter) with a `.lua` extension.
Copy the syntax from any other file. A minimal example:
```lua
{
    "creator_of_plugin/plugin_name"
}
```

> [!CAUTION]
> I may decide to add a plugin with the same name as yours, that will cause a conflict.



## Core scripts
Scripts located in the top-level directory of this repository.

- [`awww.zsh`](./hyprpaper.zsh): Switches to using `awww` for wallpaper management. This is already the default behavior so you don't have to run to.
- [`create_other_files.zsh`](./create_other_files.zsh): Creates needed files not bundled in this repository. `install.zsh` runs this automatically; you don't have to.
- [`deps.zsh`](./deps.zsh): Installs dependencies of this configuration, such as `Hyprland`. `install.zsh` runs this automatically; you don't have to.
- [`fill_other_files.zsh`](./fill_other_files.zsh): Fills needed files not bundled in this repository. `install.zsh` runs this automatically; you don't have to.
- [`hyprpaper.zsh`](./hyprpaper.zsh): Switches to using `hyprpaper` for wallpaper management. Not recommended as `awww` is just better.
- [`install.zsh`](./install.zsh): Installs this configuration.
- [`post_wal.zsh`](./post_wal.zsh): Continues installation after `wal` has been run. Should be run after `install.zsh`. Recommended to be run ASAP.



## Todo
- Add deletion script.
- Add rofi.
- Automatically run `wal` and `post_wal.zsh` in `install.zsh`.
- Use `stow --dotfiles`.

