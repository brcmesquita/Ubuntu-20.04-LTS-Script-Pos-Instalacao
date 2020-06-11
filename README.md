# Ubuntu 18.04 LTS (Bionic Beaver) Post Install Script

![ubuntu-bionic-beaver](/img/ubuntu-bionic-beaver.png)

:computer: **Need review** :penguin:  

### Description / Descrição
#### In English
This repository contains a post installation script for Linux Ubuntu 18.04 LTS.  
This repository installs the basics for those who want a Linux Ubuntu for web development with HTML, CSS, JS, NodeJS, ReactJS.  

#### Em Português
Este repositório contém um script de pós instalação para o Linux Ubuntu 18.04 LTS.  
Este repositório instala o básico para quem deseja um Linux Ubuntu para desenvolvimento Web com HTML, CSS, JS, NodeJS, ReactJS.  

### How to use
> *Copy & Paste codes below on your terminal, and press Enter.*  

Download the repository with the command below:  
```git clone https://github.com/brcmesquita/ubuntu-post-install.git```

Open the folder:  
```cd ubuntu-post-install/src```

Run:  
```./start.sh```

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
*Simple, this is the new way to use.* :wink:

**If I don't want to install some packages (applications)?**  
*You are not obliged to install all packages. If you don't want to install some, just comment the code, inserting "#" at the beginning of the line, as in the following example:*  
```#sudo apt install -y any-package```

**Can I use this repository on my Ubuntu 19.04 or higher?**  
*You can install packages that do not need to add repositories, that is, those that do not precede "sudo add-apt-repository any-repository". Some repositories may not be compatible with your current distribution.*

**Can I use this repository on my Ubuntu 16.04 or less?**  
*It follows the same answer as the previous question.*

**Can I use this script in my distribution that is not Ubuntu, but is Ubuntu-like, like Deepin, Mint, elementary OS etc?**  
*Check the version of Ubuntu your distro uses. If it's Ubuntu 18.04, you can use it without fear. If not, it follows the same answer as the previous question.*

**I don't use Ubuntu, and my distro is not Ubuntu-like. Can I use this script?**
*No. You can only use it as a reference to create your own shell script, replacing it as needed. The way to run the script is the same in all distros:*  
```./your-script.sh```