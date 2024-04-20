# Debian Configure

## Description
Here you can see my Debian configuration scripts that install & set up useful packages/apps.

## Usage
- Some small changes are most likely necessary if you want to use it yourself, please look into the scripts carefully!
- Run `as-root.sh` as root i.e. `sudo bash ./as-root.sh`
- Run `as-user.sh` as non-root i.e. `bash ./as-user.sh`

## Post Installation
After running the script you most likely want to manually check some things:
- KDE Plasma
    - Run `sudo dpkg-reconfigure lightdm`
    - Select **sddm** for *kde-plasma* as your default desktop environment
    - Select **Plasma X11** over **Plasma Wayland** due to API issues
- Docker
    - Reboot to complete docker group configuration
    - Make sure Docker is working: `docker run hello-world`
    - If you you are interested in Docker Desktop: [Docker Desktop for Debian](https://docs.docker.com/desktop/install/debian/)
- Jetbrains
    - If you're interested in Jetbrains: [Jetbrains Toolbox](https://www.jetbrains.com/toolbox-app/)
- VSCode
    - Use [`clangd`](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd) over [`C/C++`](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack) IntelliSense

### [Copyright](LICENSE)
