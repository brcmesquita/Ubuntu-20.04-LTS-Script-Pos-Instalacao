# Ubuntu 20.04 LTS (Focal Fossa) Post Install Script

:computer: **Need review** :penguin:

# Description / Descrição

#### In English

This repository contains a post installation script for Linux Ubuntu 20.04 LTS.  
This script installs the basics for those who want a Linux Ubuntu for web development with HTML, CSS, JS, NodeJS, ReactJS.  
This script was created to automate the download and installation processes of packages (applications). With this script, just run it and wait for it to finish. In the end, everything will be installed and you will be able to use it.

#### Em Português

Este repositório contém um script de pós instalação para o Linux Ubuntu 20.04 LTS.  
Este script instala o básico para quem deseja um Linux Ubuntu para desenvolvimento web com HTML, CSS, JS, NodeJS, ReactJS.  
Este script foi criado para automatizar os processos de download e instalação dos pacotes (aplicativos). Com este script, basta rodá-lo e aguardar o seu término. Ao fim, tudo estará instalado e você já poderá sair utilizando.

# How to use

> _Copy & Paste codes below on your terminal, and press Enter._

Download the repository with the command below:

```
git clone https://github.com/brcmesquita/ubuntu-post-install.git
```

Open the folder:

```
cd ubuntu-post-install/src
```

Run:

```
./start.sh
```

### What will be installed?

#### Audio & Video

- Audacity
- FFMPEG
- Lame (MP3)
- VLC

#### Development

- Build-Essentials
- Git
- GitKraken (Git GUI)
- Microsoft Visual Studio Code
- NVM
- NodeJS
- Oh-My-Zsh (with Spaceship theme)
- XAMPP/LAMPP
- Yarn
- ZSH

#### Edition

- Gimp
- Inkscape

#### Fonts

- Fira Code
- Microsoft Fonts (like Arial, Times New Roman...)
- Powerline
- and more...

#### Internet

- Google Chrome
- Mozilla Firefox
- qBitTorrent

#### ScreenCast

- OBS Studio

#### System tools

- Curl

#### Virtualization

- Docker
- Docker Compose
- Oracle VirtualBox VM

and more...

### FAQ

**Why just "apt" instead of "apt-get"**  
_Simple, this is the new way to use._ :wink:

**If I don't want to install some packages (applications)?**  
_You are not obliged to install all packages. If you don't want to install some, just comment the code, inserting "#" at the beginning of the line, as in the following example:_  
`#sudo apt install -y any-package`

**Can I use this repository on my Ubuntu 20.04 or higher?**  
_You can install packages that do not need to add repositories, that is, those that do not precede "sudo add-apt-repository any-repository". Some repositories may not be compatible with your current distribution._

**Can I use this repository on my Ubuntu 16.04 or less?**  
_It follows the same answer as the previous question._

**Can I use this script in my distribution that is not Ubuntu, but is Ubuntu-like, like Deepin, Mint, elementary OS etc?**  
_Check the version of Ubuntu your distro uses. If it's Ubuntu 20.04, you can use it without fear. If not, it follows the same answer as the previous question._

**I don't use Ubuntu, and my distro is not Ubuntu-like. Can I use this script?**  
_No. You can only use it as a reference to create your own shell script, replacing it as needed. The way to run the script is the same in all distros:_  
`./your-script.sh`
