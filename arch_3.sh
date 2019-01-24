#!/bin/bash
echo 'Установка AUR (aurman)'
sudo pacman -Syy
sudo pacman -S git --noconfirm

# Обновляем систему
sudo pacman -Syu

# Создаём aurman_install директорию и переходим в неё
mkdir -p /tmp/aurman_install
cd /tmp/aurman_install

# Установка "aurman" из AUR
git clone https://aur.archlinux.org/aurman-git.git
cd aurman-git
makepkg -si --needed --noconfirm --skippgpcheck
rm -rf aurman_install

echo 'Установка программ'
sudo pacman -S firefox ufw cherrytree libreoffice libreoffice-fresh-ru vlc qt4 qbittorrent f2fs-tools dosfstools ntfs-3g alsa-lib alsa-utils gnome-calculator file-roller p7zip unrar gvfs aspell-ru pulseaudio --noconfirm 
#sudo pacman -S firefox ufw obs-studio veracrypt freemind filezilla cherrytree gimp libreoffice libreoffice-fresh-ru kdenlive audacity pidgin screenfetch vlc qt4 qbittorrent f2fs-tools dosfstools ntfs-3g alsa-lib alsa-utils gnome-calculator file-roller p7zip unrar gvfs aspell-ru pulseaudio --noconfirm 
aurman -S dropbox hunspell-ru pamac-aur --noconfirm 
#aurman -S dropbox joxi obs-linuxbrowser xflux xflux-gui-git purple-vk-plugin purple-facebook pidgin-encryption sublime-text2 hunspell-ru pamac-aur --noconfirm 


echo 'Установка тем'
aurman -S osx-arc-shadow papirus-maia-icon-theme-git --noconfirm

echo 'Создаем нужные директории.'
sudo pacman -S xdg-user-dirs
xdg-user-dirs-update
mkdir ~/Dropbox/
mkdir ~/Dropbox/WALLPAPERS
mkdir ~/Dropbox/WALLPAPERS/GREEN/

echo 'Включаем сетевой экран'
sudo ufw enable

echo 'Установка завершена!'
rm -rf ~/arch_3.sh