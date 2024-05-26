sudo pacman -Syu
sudo pacman -S firefox git obsidian kleopatra keepassxc dosfstools curl wget feh zsh ttf-inconsolata xorg-server xorg-xinit libxft libxinerama vim arandr
cd ~
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~/.config
sudo git clone https://github.com/jsabsurd/dwm
sudo git clone https://github.com/jsabsurd/st
sudo git clone https://github.com/jsabsurd/dwm
cd ~/.config/dwm
sudo make clean install
cd ../st
sudo make clean install
cd ../dmenu
sudo make clean install
cd ~
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
zsh
cd ~
sudo git clone https://github.com/jsabsurd/configs
cd configs
sudo mv .vimrc ..
mv .vim ..
sudo mv .z* ..
sudo cp -rf wallpaper ..
cd ..
sudo rm -rf configs
source .zshrc
reboot
