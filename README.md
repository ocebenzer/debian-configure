# Debian Configure

### Description
My Debian configuration script after install

### Usage
- some small changes are most likely necessary
- run as root i.e. `sudo ./debian-configure.sh`

### Post Installation
After running the script you might want check if everything is ok:
- KDE Plasma
    - Run `sudo dpkg-reconfigure lightdm`
    - Select **sddm** for *kde-plasma* as your default desktop environment
    - Select **Plasma X11** over **Plasma Wayland** due to API issues
- Docker
    - Make sure Docker is working: `docker run hello-world`
- Ensure `update-grub` is completed properly
- If you're interested in jetbrains: [Jetbrains Toolbox](https://www.jetbrains.com/toolbox-app/)
- VSCode extensions:
    - Git Graph
    - Git Blame
- Flatpak: (as non-root)
    - Flameshot
    - Okular
    - VLC
    - Krita
    - LibreOffice (or OnlyOffice)
    - Drawio
    - Zoom
    - Discord
    - "Telegram Desktop"
    - Steam
    - KolourPaint
- Remove apt packages that you don't use:
    - `kdeconnect`
    - `kmail`
    - `korganizer`
    - `kaddressbook`
    - `idle`
    - `imagemagick`
    - `akregato`
    - `anthy`
    - `kasumi`
    - `xiterm+thai`
    - `libreoffice*` (use Flatpack if you want to use LibreOffice)

### [Copyright](LICENSE)
