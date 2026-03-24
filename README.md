# Dotfiles

## Description
Configuration for [Arch Linux](https://archlinux.org/).


## Prerequisites
To install these, run `deps.zsh`.

> [!NOTE]
> `install.zsh` automatically installs them.

Programs:
- [Zsh](https://www.zsh.org/)[^1] - Shell.
- [Kitty](https://sw.kovidgoyal.net/kitty/) - Terminal.
- [Hyprland](https://hypr.land/) - Window manager.
- [Hyprpaper](https://wiki.hypr.land/Hypr-Ecosystem/hyprpaper/) - Wallpaper setter.
- [Hyprpicker](https://wiki.hypr.land/Hypr-Ecosystem/hyprpicker/) - Used to get information about a color that is on screen.
- [Hyprlock](https://wiki.hypr.land/Hypr-Ecosystem/hyprlock/) - Session lock manager.
- [Snappy switcher](https://github.com/OpalAayan/snappy-switcher) - Alt+Tab window switcher.
- [btop](https://github.com/aristocratos/btop) - Resource and task manager.
- [Rofimoji](https://github.com/fdw/rofimoji) - Emoji selector.
- [Swaync](https://github.com/ErikReider/SwayNotificationCenter) - Notification center.

Install dependencies:
- [Git](https://git-scm.com/) [^2]
- [Stow](https://www.gnu.org/software/stow/)

[^1]: You need to download Zsh manually in order to run scripts in this repository.
[^2]: You need to download Git manually in order to clone this repository.


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

