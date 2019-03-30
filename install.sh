#!/bin/bash

. bin/loadall

## Adicionando PPAs

Message "Adicionando PPAs"

. bin/system-config/repositories

Message "Atualizando sistema"

Update

Message "Instalando pacotes essenciais"

Install "spotify-client vlc steam google-chrome-stable slack-desktop ubuntu-restricted-extras libdvd-pkg dpkg-reconfigure libdvd-pkg"
InstallPopCorn

Message "Instalando pacotes desenvolvimento"

Install "visual-studio-code yarn teamviewer terminator vi git oracle-java8-installer"

Message "Instalando e configurando NodeJs"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

mkdir ~/.nvm
nvm install stable
nvm install 0.12
nvm use stable

Message "Instalando de pacotes globais do Node"
npm i -g react-native-cli browsersync sass

Message "Copiando arquivos de sistema"
SystemFiles