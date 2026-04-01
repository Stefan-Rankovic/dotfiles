# Dotfiles

## Description
Configuration for [Arch Linux](https://archlinux.org/).


## Prerequisites
To install these, run `deps.zsh`.

> [!NOTE]
> `install.zsh` automatically installs everything[^1][^4] here.

Programs:
- [Zsh](https://www.zsh.org/)[^1] - Shell.
- [Kitty](https://sw.kovidgoyal.net/kitty/) - Terminal.
- [Hyprland](https://hypr.land/) - Window manager.
- [Hyprpicker](https://wiki.hypr.land/Hypr-Ecosystem/hyprpicker/) - Used to get information about a color that is on screen.
- [Hyprlock](https://wiki.hypr.land/Hypr-Ecosystem/hyprlock/) - Session lock manager.
- [Snappy switcher](https://github.com/OpalAayan/snappy-switcher)<sup>[AUR]</sup> - Alt+Tab window switcher.
- [btop](https://github.com/aristocratos/btop) - Resource and task manager.
- [Rofi](https://github.com/davatorium/rofi) - Selection menu. Required for `rofimoji`, but also as a clipboard selector (it can do way more too).
- [Rofimoji](https://github.com/fdw/rofimoji) - Emoji selector.
- [Swaync](https://github.com/ErikReider/SwayNotificationCenter) - Notification center.
- [Pywal16](https://github.com/eylles/pywal16)<sup>[AUR]</sup> - Theme tool that provides colors based on a passed image.
- [Yazi](https://github.com/sxyazi/yazi) - File browser.
- [Awww](https://codeberg.org/LGFae/awww)<sup>[AUR]</sup> - Wallpaper setter.[^2]
- [Normcap](https://github.com/dynobo/normcap)<sup>[AUR]</sup> - Copies text from a selected area on screen.[^3]

Install dependencies:
- [Git](https://git-scm.com/)[^4]
- [Stow](https://www.gnu.org/software/stow/)

[^1]: You need to download Zsh manually in order to run scripts in this repository.
[^2]: `hyprpaper` is an alternative, but it is not dynamic. Meaning you have to log out to change your wallpaper. If you for some reason want it, a config for it is bundled in this repository. If you want to delete that config, it's located at ~/.config/hypr/hyprpaper.conf.
[^3]: It also pulls [Grim](https://gitlab.freedesktop.org/emersion/grim) as a dependency. It is not marked as a dependency on the AUR, yet (on my machine) Normcap doesn't work without it. Screenshot permission issues. Grim is only 45 KiB anyway. But I think that technically you don't need it.
[^4]: You need to download Git manually in order to clone this repository.


## Installation

> [!CAUTION]
> Every directory inside [.config](./config/.config/) must not exist inside ~.
> For example, [config/.config/zsh/](./config/.config/zsh/) exists so ~/.config/zsh should not.

> [!IMPORTANT]
> Set the environment variable `AUR_HELPER` if you use an AUR helper.
> If it is not set or empty, the installation script will use `pacman`.

```zsh
git clone https://github.com/Stefan-Rankovic/dotfiles ~/dotfiles
cd ~/dotfiles
zsh install.zsh
```


## Customization
If you want to add your own flavor to the configuration.

### Wallpaper
If you want a new wallpaper, add it to ~/.config/hypr/wallpapers/.

If you want to switch your wallpaper, edit ~/.config/hypr/hyprpaper.conf.

> [!IMPORTANT]
> When switching wallpapers, make sure to edit both paths inside the hyprpaper configuration file.

### Zsh aliases/functions/whatever
Add to ~/.config/zsh/aliases/, ~/.config/zsh/functions, ~/.config/zsh/addons/zinit_plugins/, or wherever you feel like it fits.

> [!NOTE]
> Every file inside is sourced and its contents are not checked.
> So putting an alias inside ~/.config/zsh/functions/ is not a big deal at all.


## Todo
- Add deletion script.
- Add rofi.
- Add waybar.
- Add kitty.

