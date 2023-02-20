# Fedora Full Setup

This setup of fedora use i3wm

## Prepare System

updates and rpm fusion

```sh
# update
sudo dnf update -y
# rpm fusion
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

```

**NEED RESTART THE SYSTEM**

## Dependencies

### File compress

```sh
sudo dnf install \
tar \
rar \
zip \
unzip \
-y
```

### Terminal

```
sudo dnf install \
exa \
ranger \
kitty \
ripgrep \
the_silver_searcher \
fzf \
feh \
tmux \
alacritty \
git \
axel \
nitrogen \
-y
```

### Shell

```
sudo dnf install \
fish \
-y
```

### Usage

```sh
sudo dnf install \
ulauncher \
telegram-desktop \
-y
```

### FOLDERS

```sh
# to executable programs on future
mkdir -p ~/Programs
mkdir -p ~/.local/share/applications/
update-desktop-database ~/.local/share/applications/
mkdir -p ~/.local/share/fonts
```

### Develop dependencies

```sh
sudo dnf install \
python-pip \
npm \
-y
pip install virtualenv
```
### Python dependencies

```sh
python -m pip install pip --upgrade
pip install pywal
```
### NPM dependencies

```sh
mkdir -p ~/.npm-global
npm config set prefix '~/.npm-global'
echo "export PATH=~/.npm-global/bin:\$PATH" > ~/.profile
fish -c "fish_add_path -g ~/.npm-global/bin"  
source ~/.profile
npm install -g jshint
npm install -g npm
```

### Editor

```sh
sudo dnf install \
vim \
neovim \
-y
pip install pyvim pynvim
npm install vim nevim
fish -c "alias --save nv=nvim"
```

### WM

```sh
sudo dnf install \
i3 \
dunst \
-y
```

## Setup files

```sh
ln -s ~/Projects/kitty/ ~/.config/
ln -s ~/Projects/fish/ ~/.config/
ln -s ~/Projects/i3 ~/.config/
ln -s ~/Projects/i3status/ ~/.config/
ln -s ~/Projects/alacritty/ ~/.config/
ln -s ~/Projects/tmux/ ~/.config/
```

## Fonts

```sh
chmod +x ~/Projects/nerdfonts/download.sh
~/Projects/nerdfonts/download.sh
```

## wallpapers

```sh
mkdir -p ~/Pictures/wallpapers/
cp -r images/w/* ~/Pictures/wallpapers/
cp -r images/Wallpapers/* ~/Pictures/wallpapers/
```

## Browsers

### Brave 

[Brave](https://brave.com/linux/#release-channel-installation)

```sh
sudo dnf install dnf-plugins-core

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf install brave-browser -y
```

### Firefox Nightly

Download the compress file 

[Firefox nightly](https://www.mozilla.org/es-ES/firefox/channel/desktop/)

Uncompress folder inside of `Programs` and make app of this

> **Note:** inside of `Downloads` folder just exist 1 Firefox nightly compress file 

```sh
# make sure the app forlder
mkdir -p ~/Programs
tar -xvf ~/Downloads/firefox-11*.tar.bz2 -C ~/Programs/
echo "[Desktop Entry]
Encoding=UTF-8
Name=Firefox Nightly
GenericName=Web Browser
Comment=Browse the Web
Exec=$HOME/Programs/firefox/firefox
Icon=$HOME/Programs/firefox/browser/chrome/icons/default/default128.png
Terminal=false
Type=Application
Version=1.0
Categories=Application;Network;WebBrowser;
MimeType=text/html;text/xml;application/xhtml+xml;application/vnd.mozilla.xul+xml;text/mml;
StartupNotify=True
" > ~/.local/share/applications/firefox_nightly.desktop
```


## NOTE

Change all 
project by $0 
~/ by $home

