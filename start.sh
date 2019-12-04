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

  echo "\n\e[01;36mInstalando Curl...\e[00m\n"
  sudo apt install curl -y

  echo "\n\e[01;36mInstalando Software Properties Common...\e[00m\n"
  sudo apt install software-properties-common -y

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

  echo "\n\e[01;36mInstalando NVM (NodeJS Version Manager )...\e[00m\n"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

  # If you have ZSH installed and/or Oh-My-ZSH, it will export to them. Otherwise, it will be exported to bash (default terminal)
  if [ -f ~/.zshrc ] # -f for files, -d for directories
  then
  echo "\n\e[01;33mZSH detectado. Vou configurar o NVM para funcionar no ZSH...\e[00m\n"
echo "export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion" >> ~/.zshrc
  else
echo "export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion" >> ~/.bashrc
  fi

  echo "\n\e[01;36mInstalando Node (via NVM)...\e[00m\n"
  nvm install node

  echo "\n\e[01;36mInstalando o Yarn...\e[00m\n"
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt update
  sudo apt install --no-install-recommends yarn

  echo "\n\e[01;36mInstalando Create-React-App (Node/NPM)...\e[00m\n"
  npm install -g create-react-app

  echo "\n\e[01;36mIniciando Instalação do Docker...\e[00m\n"
  echo "\n\e[01;36mRemovendo instalações anteriores do Docker...\e[00m\n"
  sudo apt remove docker docker-engine docker.io containerd runc -y
  sudo apt autoremove -y

  echo "\n\e[01;36mConfigurando o repositório do Docker...\e[00m\n"
  sudo apt update
  sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  # Warning: Using Disco Dingo Repository
  sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu disco stable"
  sudo apt update

  echo "\n\e[01;36mInstalando Docker...\e[00m\n"
  sudo apt install docker-ce docker-ce-cli containerd.io -y

  echo "\n\e[01;36mConfigurando permissões para o Docker...\e[00m\n"
  sudo usermod -aG docker $USER
  newgrp docker
  
  echo "\n\e[01;36mBaixando e instalando o Docker Compose...\e[00m\n"
  curl -s https://api.github.com/repos/docker/compose/releases/latest \
  | grep browser_download_url \
  | grep docker-compose-Linux-x86_64 \
  | cut -d '"' -f 4 \
  | wget -qi -
  chmod +x docker-compose-Linux-x86_64
  sudo mv docker-compose-Linux-x86_64 /usr/local/bin/docker-compose

  echo "\n\e[01;36mInstalando o Command-line completion para o Docker Compose...\e[00m\n"
  mkdir -p ~/.zsh/completion
  curl -L https://raw.githubusercontent.com/docker/compose/master/contrib/completion/zsh/_docker-compose > ~/.zsh/completion/_docker-compose
  
  # echo "\n\e[01;36mInstalando o dotNET 3.0 SDK...\e[00m\n"
  # wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
  # sudo dpkg -i packages-microsoft-prod.deb
  # sudo apt-get update
  # sudo apt-get install apt-transport-https
  # sudo apt-get update
  # sudo apt-get install dotnet-sdk-3.0

  # echo "\n\e[01;36mBaixando XAMPP (Apache, PHP 7.3 e MariaDB)...\e[00m\n"
  # wget https://sourceforge.net/projects/xampp/files/latest/download -O xampp.run
  # sudo chmod +x xampp.run
  # sudo ./xampp.run &

  

  # echo "\n\e[01;36m ...\e[00m\n"