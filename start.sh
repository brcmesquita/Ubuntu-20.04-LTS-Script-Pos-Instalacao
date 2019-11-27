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

  