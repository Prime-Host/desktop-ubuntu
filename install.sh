#Login as root before start
apt-get update
apt-get upgrade -y

#KeePassX
apt-get install keepassx -y

#Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
apt-get update 
apt-get install google-chrome-stable -y

#Spotify
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list 
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com BBEBDCB318AD50EC6865090613B00F1FD2C19886
apt-get update
apt-get install spotify-client -y

#Git
apt-get install git -y

#Docker
apt-get update
apt-get upgrade -y
apt-get install vim htop iftop git curl -y

apt-get update
apt-get install apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" >> /etc/apt/sources.list.d/docker.list
apt-get update
apt-get purge lxc-docker
apt-cache policy docker-engine
apt-get update
apt-get install linux-image-extra-$(uname -r) -y
apt-get update
apt-get install docker-engine -y

curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo "export HISTFILESIZE=" >> /root/.bashrc
echo "export HISTSIZE=" >> /root/.bashrc

#Gnome Tweak Tool
apt-get install gnome-tweak-tool -y
#Install these Extensions: Activities configurator, Das to dock, Mmod Panel, Pixel saver, User Themes

#oh-my-zsh
apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Conky Manager
apt-add-repository -y ppa:teejee2008/ppa
apt-get update
apt-get install conky-manager -y



