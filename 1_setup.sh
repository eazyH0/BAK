wget https://raw.githubusercontent.com/eazyH0/BAK/refs/heads/main/locale -P $HOME/
wget https://raw.githubusercontent.com/eazyH0/BAK/refs/heads/main/sources.list -P $HOME/
chmod +x $HOME/sources.list
chmod +x $HOME/locale
cp -f $HOME/sources.list /etc/apt/sources.list
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install language-pack-ko tree -y
cp -f $HOME/locale /etc/default/locale
timedatectl set-timezone Asia/Seoul