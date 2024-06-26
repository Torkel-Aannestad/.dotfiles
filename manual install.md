# manual install
sudo apt install
zsh

adduser torkel --uid 1000 --gid 1000
usermod -aG sudo torkel

endre shell
chsh -s $(which zsh)
mkdir -p ~/.oh-my-zsh


