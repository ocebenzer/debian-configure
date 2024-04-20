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
    - [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)
    - [Git Blame](https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame)
    - C++
        - [`CMake Tools`](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools)
        - Use [`clangd`](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd) over [`C/C++`](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack) IntelliSense
    - Python
        - [`Pylance`](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
    - JavaScript
        - [`Debugger for Firefox`](https://marketplace.visualstudio.com/items?itemName=firefox-devtools.vscode-firefox-debug)
- Flatpak: (as non-root)
    - [Flameshot](https://flathub.org/apps/org.flameshot.Flameshot)
    - [Okular](https://flathub.org/apps/org.kde.okular)
    - [VLC](https://flathub.org/apps/org.videolan.VLC)
    - [Krita](https://flathub.org/apps/org.kde.krita)
    - [LibreOffice](https://flathub.org/apps/org.libreoffice.LibreOffice) (or [ONLYOFFICE](https://flathub.org/apps/org.onlyoffice.desktopeditors))
    - [draw.io](https://flathub.org/apps/com.jgraph.drawio.desktop)
    - [Zoom](https://flathub.org/apps/us.zoom.Zoom)
    - [Discord](https://flathub.org/apps/com.discordapp.Discord)
    - [Telegram Desktop](https://flathub.org/apps/org.telegram.desktop)
    - [Steam](https://flathub.org/apps/com.valvesoftware.Steam)
        - Also [Proton-GE](https://github.com/GloriousEggroll/proton-ge-custom?tab=readme-ov-file#flatpak)
    - [KolourPaint](https://flathub.org/apps/org.kde.kolourpaint)
- Remove apt packages that you don't use:
    - [`kdeconnect`](https://packages.debian.org/bookworm/kdeconnect)
    - [`kmail`](https://packages.debian.org/bookworm/kmail)
    - [`korganizer`](https://packages.debian.org/bookworm/korganizer)
    - [`kaddressbook`](https://packages.debian.org/bookworm/kaddressbook)
    - [`idle`](https://packages.debian.org/bookworm/idle)
    - [`imagemagick`](https://packages.debian.org/bookworm/imagemagick)
    - [`akregator`](https://packages.debian.org/bookworm/akregator)
    - [`anthy`](https://packages.debian.org/bookworm/anthy)
    - [`kasumi`](https://packages.debian.org/bookworm/kasumi)
    - [`xiterm+thai`](https://packages.debian.org/bookworm/xiterm+thai)
    - [`libreoffice`](https://packages.debian.org/source/bookworm/libreoffice)
        - `apt remove libreoffice*` for convenience
        - (use Flatpack if you want to use LibreOffice)

### [Copyright](LICENSE)
