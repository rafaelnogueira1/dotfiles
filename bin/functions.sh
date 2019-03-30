Update() {
    sudo apt update
    sudo apt upgrade
}

Install() {
    sudo apt-get install $1
    sudo apt autoremove
}

InstallPopCorn() {
    wget https://get.popcorntime.sh/build/Popcorn-Time-0.3.10-Linux-64.tar.xz -O popcorntime.tar.xz
    sudo mkdir /opt/popcorntime
    sudo tar Jxf popcorntime.tar.xz -C /opt/popcorntime/
    sudo ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/Popcorn-Time
    echo -e '[Desktop Entry]\n Version=1.0\n Name=popcorntime\n Exec=/opt/popcorntime/Popcorn-Time\n Icon=/opt/popcorntime/src/app/images/icon.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/popcorntime.desktop
    
}

SystemFiles() {
    cp -v bin/system-settings/.bashrc bin/system-settings/.gitconfig bin/system-settings/.vimrc $HOME
    cp -v system-config/popcorn/data $HOME/.config/Popcorn-Time/Default
    cp -v system-config/vscode/User $HOME/.config/Code
    cp -v system-config/terminator/config $HOME/.config/terminator
}