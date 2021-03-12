apt-get update -y
apt-get upgrade -y
apt-get install software-properties-common -y
apt-get install openjdk-8-jdk git nano sudo -y
git clone https://github.com/AtherMage/MCSOTIS
rm .bashrc
mv bashrcbackup .bashrc
exit
