#!/bin/bash

#### UBUNTU SIMPLE POST INSTALLATION SCRIPT

## Just Run "start.sh"

## Created by Raphael Cabral
## Nov/26/2019

  cd /tmp

  echo "\n\e[01;36mAtualizando lista de repositórios...\e[00m\n"
  sudo apt update
  echo "\n\e[01;36mInicializando a atualização dos pacotes...\e[00m\n"
  sudo apt upgrade -y
  echo "\n\e[01;36mRemovendo pacotes que não são mais necessários...\e[00m\n"
  sudo apt autoremove -y

  echo "\n\e[01;36mAdicionando repositório do Git na lista...\e[00m\n"
  sudo add-apt-repository ppa:git-core/ppa -y
  echo "\n\e[01;36mInstalando Git...\e[00m\n"
  sudo apt install git -y

  echo "\n\e[01;36mBaixando Google Chrome...\e[00m\n"
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O googlechrome.deb
  echo "\n\e[01;36mInstalando Google Chrome ...\e[00m\n"
  sudo dpkg -i googlechrome.deb
  sudo apt install -f -y

  echo "\n\e[01;36mBaixando Microsoft Visual Studio Code...\e[00m\n"
  wget https://go.microsoft.com/fwlink/?LinkID=760868 -O visualcode.deb
  echo "\n\e[01;36mInstalando o Microsoft Visual Studio Code...\e[00m\n"
  sudo dpkg -i visualcode.deb
  sudo apt install -f -y

  echo "\n\e[01;36mBaixando Gitkraken...\e[00m\n"
  wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
  echo "\n\e[01;36mInstalando Gitkraken...\e[00m\n"
  sudo dpkg -i gitkraken-amd64.deb
  sudo apt install -fy

  echo "\n\e[01;36m ...\e[00m\n"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

  echo "\n\e[01;36m ...\e[00m\n"
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt update
  sudo apt install --no-install-recommends yarn

  echo "\n\e[01;36m ...\e[00m\n"
  wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
  sudo dpkg -i packages-microsoft-prod.deb
  sudo apt-get update
  sudo apt-get install apt-transport-https
  sudo apt-get update
  sudo apt-get install dotnet-sdk-3.0

  echo "\n\e[01;36m ...\e[00m\n"