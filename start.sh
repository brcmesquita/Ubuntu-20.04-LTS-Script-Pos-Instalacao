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

