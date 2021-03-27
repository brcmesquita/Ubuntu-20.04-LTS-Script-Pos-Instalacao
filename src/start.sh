#!/bin/bash

#### BETA FOREVER !!!!!!!!!!

#### UBUNTU SIMPLE POST INSTALLATION SCRIPT

### Just download and run "sudo ./start.sh"

### CREATED by Bruno Raphael Cabral de Mesquita
### Nov/26/2019

### UPDATED by Bruno Raphael Cabral de Mesquita
### Mar/24/2021

cd /tmp

echo "Atualizando lista de repositórios..."
  sudo apt update

echo "Inicializando a atualização dos pacotes..."
  sudo apt upgrade -y

echo "Removendo pacotes que não são mais necessários..."
  sudo apt autoremove -y

echo "Instalando Software Properties Common..."
  sudo apt install software-properties-common -y

echo "Instalando cURL..."
  sudo apt install -y curl

echo "Instalando o dconf..."
  sudo apt install -y dconf-cli

echo "Adicionando repositório do Git..."
  sudo add-apt-repository -y ppa:git-core/ppa
echo "Instalando Git..."
  sudo apt install git -y

echo "Instalando o Xterm (necessário para o Steam)..."
  sudo apt install -y xterm

echo "Baixando o Google Chrome..."
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O googlechrome.deb
echo "Instalando o Google Chrome ..."
  sudo apt install -y ./googlechrome.deb
  sudo apt install -f -y

echo "Instalando o dotNET 5 SDK..."
  wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
  sudo apt install -y ./packages-microsoft-prod.deb
  sudo apt update
  sudo apt install -y apt-transport-https
  sudo apt update
  sudo apt install -y dotnet-sdk-5.0

echo "Instalando openJDK 11 JDK (Java 11 JDK)..."
  sudo apt install -y openjdk-11-jdk

echo "Baixando Microsoft Visual Studio Code..."
  wget https://go.microsoft.com/fwlink/?LinkID=760868 -O visualcode_$(date +"%Y-%m-%d_%H-%M-%S").deb
echo "Instalando o Microsoft Visual Studio Code..."
  sudo apt install -y ./visualcode.deb
  sudo apt install -f -y

echo "Baixando Gitkraken..."
  wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
echo "Instalando Gitkraken..."
  sudo apt install -y ./gitkraken-amd64.deb
  sudo apt install -fy

echo "Instalando DBeaver Community..."
  sudo apt install -y dbeaver-ce

echo "Instalando Docker..."
  sudo apt remove docker docker-engine docker.io containerd runc
  sudo apt install -y apt-transport-https ca-certificates curl gnupg lsb-release
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
  echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt update
  sudo apt install -y docker-ce docker-ce-cli containerd.io

#echo "Configurando permissões para o Docker..."
  #sudo usermod -aG docker $USER
  #newgrp docker

#echo "Baixando e instalando o Docker Compose..."
  #curl -s https://api.github.com/repos/docker/compose/releases/latest \
  #| grep browser_download_url \
  #| grep docker-compose-Linux-x86_64 \
  #| cut -d '"' -f 4 \
  #| wget -qi -
  #chmod +x docker-compose-Linux-x86_64
  #sudo mv docker-compose-Linux-x86_64 /usr/local/bin/docker-compose

#echo "Instalando o Command-line completion para o Docker Compose..."
  #mkdir -p ~/.zsh/completion
  #curl -L https://raw.githubusercontent.com/docker/compose/master/contrib/completion/zsh/_docker-compose > ~/.zsh/completion/_docker-compose
  #fpath=(~/.zsh/completion $fpath)
  #autoload -Uz compinit && compinit -i
  #exec $SHELL -l

# Oracle VM VirtualBox 6
  #wget https://download.virtualbox.org/virtualbox/6.0.14/Oracle_VM_VirtualBox_Extension_Pack-6.0.14.vbox-extpack
  #wget https://download.virtualbox.org/virtualbox/6.0.14/virtualbox-6.0_6.0.14-133895~Ubuntu~bionic_amd64.deb
  #sudo apt install -y ./virtualbox-6.0_6.0.14-133895~Ubuntu~bionic_amd64.deb
  #sudo apt install -fy
  #sudo VBoxManage extpack install --replace Oracle_VM_VirtualBox_Extension_Pack-6.0.14.vbox-extpack

#echo "Instalando o ZSH..."
  #sudo apt install zsh -y 

#echo "Instalando o Oh-My-ZSH..."
  # sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#echo "Instalando e Configurando o Tema Spaceship para ZSH..."
  # git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
  # ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
  # sed -i 's,robbyrussell,spaceship,g' ~/.zshrc
  # echo '
  # SPACESHIP_PROMPT_ORDER=(
  #   time          # Time stamps section
  #   user          # Username section
  #   dir           # Current directory section
  #   host          # Hostname section
  #   git           # Git section (git_branch + git_status)
  #   #hg            # Mercurial section (hg_branch  + hg_status)
  #   package       # Package version
  #   node          # Node.js section
  #   docker        # Docker section
  #   aws           # Amazon Web Services section
  #   gcloud        # Google Cloud Platform section
  #   venv          # virtualenv section
  #   pyenv         # Pyenv section
  #   dotnet        # .NET section
  #   kubectl       # Kubectl context section
  #   battery       # Battery level and status
  #   exec_time     # Execution time
  #   line_sep      # Line break
  #   #vi_mode       # Vi-mode indicator
  #   jobs          # Background jobs indicator
  #   exit_code     # Exit code section
  #   char          # Prompt character
  # )

  # SPACESHIP_USER_SHOW=always
  # SPACESHIP_PROMPT_ADD_NEWLINE=false
  # #SPACESHIP_CHAR_SYMBOL="❯"
  # SPACESHIP_CHAR_SUFFIX=" "
  # ' >> ~/.zshrc

#echo "Instalando DHARMA para o ZSH e Oh-My-ZSH..."
  #sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

#echo "Congifurando plugins do ZSH..."
  # echo '
  # zinit light zdharma/fast-syntax-highlighting
  # zinit light zsh-users/zsh-autosuggestions
  # zinit light zsh-users/zsh-completions
  # ' >> ~/.zshrc

# echo "Instalando NVM (NodeJS Version Manager )..."
#   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# echo 'export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> ~/.zshrc
# source ~/.zshrc

# echo "Instalando Node LTS (via NVM)..."
#   nvm install --lts

#echo "Instalando o Yarn..."
  #curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  #echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  #sudo apt update
  #sudo apt install --no-install-recommends yarn

#echo "Instalando Create-React-App (Node/NPM)..."
  #npm install -g create-react-app

#echo "Baixando XAMPP (Apache, PHP 7.3 e MariaDB)..."
  # wget https://sourceforge.net/projects/xampp/files/latest/download -O xampp.run
  # sudo chmod +x xampp.run
  # sudo ./xampp.run &

echo "Instalando Insomnia..."
  wget https://updates.insomnia.rest/downloads/ubuntu/latest\?\&app\=com.insomnia.app\&source\=website -O insomnia_$(date +"%Y-%m-%d_%H-%M-%S").deb

echo "Baixando Steam..."
  cd /tmp
  wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb
echo "Instalando Steam..."
  sudo apt install -y ./steam.deb
  sudo apt install -fy

echo "Instalando o qBitTorrent..."
  sudo apt install -y qbittorrent  

echo "Instalando o FFMPEG..."
  sudo apt install -y ffmpeg

echo "Instalando o Lame..."
  sudo apt install -y lame

echo "Instalando o MPV Player..."
  sudo apt install -y mpv

echo "Instalando o SMPlayer..."
  sudo apt install -y smplayer

echo "Instalando o VLC..."
  sudo apt install -y vlc

echo "Instalando o Spotify..."
  curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
  echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
  sudo apt update
  sudo apt install -y spotify-client
  sudo apt install -y -f

echo "Instalando o OBS Studio..."
  sudo add-apt-repository -y ppa:obsproject/obs-studio
  sudo apt install -y obs-studio

#echo "Instalando o AnyDesk..."
# #add repository key to Trusted software providers list
# wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
# #add the repository:
# echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
# #update apt cache:
# sudo apt update
# #install anydesk:
# sudo apt install -y anydesk

echo "Instalando fontes Powerline..."
  sudo apt install fonts-powerline -y

echo "Instalando fontes da Microsoft..."
  echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
  sudo apt install ttf-mscorefonts-installer -y

# echo "Instalando fontes Fira Code..."
#   cd /tmp
#   wget https://github.com/tonsky/FiraCode/releases/download/2/FiraCode_2.zip
#   unzip FiraCode_2.zip
#   mkdir -p ~/.fonts
#   mv ttf/* ~/.fonts

# echo "Instalando o elementary Tweaks..."
#   sudo add-apt-repository ppa:philip.scott/elementary-tweaks -y
#   sudo apt install elementary-tweaks -y

echo "Instalando o GNOME Tweaks"
  sudo apt install -y gnome-tweaks

echo "Instalando o Tema Dracula no GNOME Terminal"
  cd /tmp
  git clone https://github.com/dracula/gnome-terminal
  cd gnome-terminal
  ./install.sh
  cd ..
  rm gnome-terminal -rf

#echo "Instalando o Papirus Icon Theme..."
#echo "Adicionando o repositório do Papirus Themes..."
#   sudo add-apt-repository ppa:papirus/papirus -y
#echo "Instalando o Papirus Icon Theme..."
#   sudo apt install papirus-icon-theme -y
#echo "Instalando o Papirus Folders..."
#   sudo apt install papirus-folders -y
#   papirus-folders -C yaru #change color

echo "Realizando última atualização dos pacotes..."
  sudo apt update -y
  sudo apt upgrade -y

echo "Removendo pacotes que não são mais necessários..."
  sudo apt autoremove -y

echo "Fim da Pós Instalação..."
