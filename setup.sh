#!/bin/bash

apt install -y man gcc make perl terminator zsh git neofetch

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlight$

mv zshrc $HOME/.zshrc

apt install -y build-essential dkms linux-headers-$(uname -r)

rmdir $HOME/Music/ $HOME/Pictures/ $HOME/Public/ $HOME/Templates/ $HOME/Videos/

apt install -y build-essential make bison flex libpam0g-dev
git clone https://github.com/slicer69/doas.git
cd doas; make
make install
echo 'permit $USER as root' > /usr/local/etc/doas.conf
