# General
sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt install -y gnome-tweak-tool htop zsh curl wget git

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp ~/.oh-my-zsh/themes/bira.zsh-theme ~/.oh-my-zsh/themes/prime-host.zsh-theme \
 && sed -i 's/%m%/%M%/g' ~/.oh-my-zsh/themes/prime-host.zsh-theme \
 && sed -i s:~/.oh-my-zsh:\$HOME/.oh-my-zsh:g ~/.zshrc \
 && sed -i 's/robbyrussell/prime-host/g' ~/.zshrc \
 && echo "DISABLE_UPDATE_PROMPT=true" >> ~/.zshrc

# install chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update 
sudo apt-get install google-chrome-stable
