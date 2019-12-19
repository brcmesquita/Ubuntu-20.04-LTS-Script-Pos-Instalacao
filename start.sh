#!/bin/bash

#### UNDER CONSTRUCTION !!!!!!!!!!

#### UBUNTU SIMPLE POST INSTALLATION SCRIPT

## Just download and run "sudo ./start.sh"

## Created by Raphael Cabral
## Nov/26/2019

  cd /tmp

  echo "\n\e[01;36mAtualizando lista de repositórios...\e[00m\n"
  sudo apt update
  echo "\n\e[01;36mInicializando a atualização dos pacotes...\e[00m\n"
  sudo apt upgrade -y
  echo "\n\e[01;36mRemovendo pacotes que não são mais necessários...\e[00m\n"
  sudo apt autoremove -y

  echo "\n\e[01;36mInstalando cURL...\e[00m\n"
  sudo apt install curl -y

  echo "\n\e[01;36mInstalando Software Properties Common...\e[00m\n"
  sudo apt install software-properties-common -y

  echo "\n\e[01;36mAdicionando repositório do Git na lista...\e[00m\n"
  sudo add-apt-repository -y ppa:git-core/ppa
  echo "\n\e[01;36mInstalando Git...\e[00m\n"
  sudo apt install git -y

  echo "\n\e[01;36mInstalando fontes Powerline...\e[00m\n"
  sudo apt install fonts-powerline -y

  echo "\n\e[01;36mInstalando fontes da Microsoft...\e[00m\n"
  sudo apt install ttf-mscorefonts-installer -y

  echo "\n\e[01;36mInstalando fontes Fira Code...\e[00m\n"
  wget https://github.com/tonsky/FiraCode/releases/download/2/FiraCode_2.zip
  unzip FiraCode_2.zip
  mkdir -p ~/.fonts
  mv ttf/* ~/.fonts

  sudo apt install -y vlc
  sudo apt install -y ffmpeg
  sudo apt install -y lame

  sudo add-apt-repository -y ppa:obsproject/obs-studio
  sudo apt install -y obs-studio

  

  echo "\n\e[01;36mBaixando Google Chrome...\e[00m\n"
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O googlechrome.deb
  echo "\n\e[01;36mInstalando Google Chrome ...\e[00m\n"
  sudo dpkg -i googlechrome.deb
  sudo apt install -f -y

sudo apt install -y qbittorrent

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
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

  echo "\n\e[01;36mInstalando Node (via NVM)...\e[00m\n"
  nvm install node

  echo "\n\e[01;36mInstalando o Yarn...\e[00m\n"
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt update
  sudo apt install --no-install-recommends yarn

  echo "\n\e[01;36mInstalando Create-React-App (Node/NPM)...\e[00m\n"
  npm install -g create-react-app

  echo "\n\e[01;36mInstalando Docker...\e[00m\n"
  sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
  sudo apt update
  sudo apt install -y docker-ce

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
  fpath=(~/.zsh/completion $fpath)
  autoload -Uz compinit && compinit -i
  exec $SHELL -l

  # Oracle VM VirtualBox 6
  wget https://download.virtualbox.org/virtualbox/6.0.14/Oracle_VM_VirtualBox_Extension_Pack-6.0.14.vbox-extpack
  wget https://download.virtualbox.org/virtualbox/6.0.14/virtualbox-6.0_6.0.14-133895~Ubuntu~bionic_amd64.deb
  sudo dpkg -i virtualbox-6.0_6.0.14-133895~Ubuntu~bionic_amd64.deb
  sudo apt install -fy
  sudo VBoxManage extpack install --replace Oracle_VM_VirtualBox_Extension_Pack-6.0.14.vbox-extpack

  echo "\n\e[01;36mInstalando o ZSH...\e[00m\n"
  sudo apt install zsh -y 

  echo "\n\e[01;36mInstalando o Oh-My-ZSH...\e[00m\n"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  echo "\n\e[01;36mConfigurando o ZSH para funcionar o NVM...\e[00m\n"
echo "export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion" >> ~/.zshrc

  echo "\n\e[01;36mConfigurando tema Dracula para o Oh-My-ZSH...\e[00m\n"

  echo "\n\e[01;36mInstalando o dConf...\e[00m\n"
  sudo apt install dconf-cli -y

  echo "\n\e[01;36mInstalando o Tema Dracula para ZSH...\e[00m\n"
  cd /tmp
  git clone https://github.com/GalaticStryder/gnome-terminal-colors-dracula
  cd gnome-terminal-colors-dracula
  ./install.sh

  echo "\n\e[01;36mInstalando e Configurando o Tema Spaceship para ZSH...\e[00m\n"
  git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
  ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
  sed -i 's,robbyrussell,spaceship,g' ~/.zshrc
  exec $SHELL -
  echo "# SPACESHIP
SPACESHIP_PROMPT_ORDER=(
  time
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_TIME_SHOW=true
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SUFFIX=" "" >> ~/.zshrc

  echo "\n\e[01;36mInstalando plugins do ZSH...\e[00m\n"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

  echo "\n\e[01;36mCongifurando plugins do ZSH...\e[00m\n"
  echo "# ZPLUGINS
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions" >> ~/.zshrc

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
