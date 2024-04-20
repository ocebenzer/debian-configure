if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

USERNAME="ocb"

# Huawei Matebook D16 Microphone issue
echo "pactl load-module module-detect" > /etc/profile.d/microphone-solution.sh

# Update GRUB, uncomment if you have dual-boot
sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/' /etc/default/grub
sed -i 's/GRUB_DISABLE_OS_PROBER=false/GRUB_DISABLE_OS_PROBER=true/' /etc/default/grub
update-grub

apt update
apt install wget apt-transport-https ca-certificates curl gnupg

pushd /home/$USERNAME/Downloads
    # Docker GPG @ref https://docs.docker.com/engine/install/debian/
    install -m 0755 -d /etc/apt/keyrings

    curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    chmod 644 /etc/apt/keyrings/docker.gpg

    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian bookworm stable" \
        > /etc/apt/sources.list.d/docker.list

    # kubectl GPG @ref https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-using-native-package-management
    curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.29/deb/Release.key | gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
    chmod 644 /etc/apt/keyrings/docker.gpg

    echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.29/deb/ /' \
        > /etc/apt/sources.list.d/kubernetes.list

    # VSCode GPG
    curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor -o /etc/apt/keyrings/microsoft-archive-keyring.gpg
    chmod 644 /etc/apt/keyrings/microsoft-archive-keyring.gpg

    echo "deb [arch=amd64,arm64,armhf signed-by=/usr/share/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" \
        > /etc/apt/sources.list.d/vscode.list

    # NodeJS GPG @ref https://github.com/nodesource/distributions#debian-versions
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    chmod 644 /etc/apt/keyrings/nodesource.gpg

    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" \
    > /etc/apt/sources.list.d/nodesource.list
popd

apt update
apt install -y \
    kde-standard openssh-server atool neofetch neovim nala \
    flatpak plasma-discover-backend-flatpak \
    gcc gdb doctest-dev cmake clangd libboost-all-dev \
    maven default-jdk \
    python3-full python3-ipykernel \
    nodejs \
    docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin \
    kubectl code

# Post installation
groupadd docker
usermod -aG docker $USERNAME

echo
echo Done!
