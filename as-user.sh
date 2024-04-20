if [ "$EUID" -e 0 ]
  then echo "Please run as non-root"
  exit
fi

# NodeJS @ref https://nodejs.org/en/download/package-manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install 20
corepack enable

code \
  --install-extension mhutchie.git-graph \
  --install-extension waderyan.gitblame \
  --install-extension ms-vscode.cpptools-extension-pack \
  --install-extension llvm-vs-code-extensions.vscode-clangd \
  --install-extension ms-python.vscode-pylance \
  --install-extension firefox-devtools.vscode-firefox-debug

flatpak install -y \
  org.kde.okular \
  org.kde.krita \
  org.kde.kolourpaint \
  org.libreoffice.LibreOffice \
  com.jgraph.drawio.desktop \
  org.flameshot.Flameshot \
  org.videolan.VLC \
  org.telegram.desktop \
  com.discordapp.Discord \
  com.valvesoftware.Steam \
  net.davidotek.pupgui2 \
  us.zoom.Zoom
