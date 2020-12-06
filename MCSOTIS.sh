clear
echo -e "How did you run me? 
1) In Termux(install Ubuntu)
2) In Ubuntu(run main part of script)" 
read -p 'Answer:' answer;
if [ "${answer:-}" = "2" ] 
then
clear
echo -e "MCSOTIS by AtherMage
Please, select a version:
1) Spigot 1.16.4
2) Spigot 1.16.3
3) Spigot 1.16.2
4) Spigot 1.16.1
5) Spigot 1.15.2
6) Spigot 1.14.4
7) Spigot 1.12.2
8) Vanilla 1.15.2
9) Vanilla 1.14.4
10) Vanilla 1.13.2
11) Vanilla 1.12.2
12) Vanilla 1.7.10
13) Forge 1.12.2
14) Forge 1.7.10
\e[1;33m0) Only install Java Development Kit
?) About MCSOTIS\e[0m
\e[1;31mX) Exit\e[0m"
read -p 'Version:' version;
#Hi!  If you are reading this, it means that you are interested in how this script is made. I will say right away - VERY BAD. I don't know anything about programming. The basis for this script was made by the Android application "Termux Script Maker", it was in it that I learned to use the "read -p" and "if". I'm sorry that the script is made so badly.
if [ "${version:-}" = "1" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 echo [*] Downloading and installing server...
 git clone https://github.com/AtherMage/Spigot_1.15.2_Data >/dev/null #Clonning data from GitHub
 cd ..
 wget https://cdn.getbukkit.org/spigot/spigot-1.16.4.jar >/dev/null #Downloading server
 chmod +x spigot-1.16.4.jar
 cd MCSOTIS
 cd Spigot_1.15.2_Data
 cp eula.txt ../..  #Copiing server files
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip >/dev/null #Downloading and unpacking ngrok
 apt-get install zip unzip >/dev/null
 unzip ngrok.zip >/dev/null
 echo "clear" >> start.sh
 echo "java -Xms512M -Xmx2048M -jar spigot-1.16.4.jar -nogui" >> start.sh
 chmod +x start.sh
 clear
 echo -e "\e[32mComplete!\e[0m"
fi
if [ "${version:-}" = "2" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 echo [*] Downloading and installing server...
 git clone https://github.com/AtherMage/Spigot_1.15.2_Data >/dev/null #Clonning data from GitHub
 cd ..
 wget https://cdn.getbukkit.org/spigot/spigot-1.16.3.jar >/dev/null #Downloading server
 chmod +x spigot-1.16.3.jar
 cd MCSOTIS
 cd Spigot_1.15.2_Data
 cp eula.txt ../..  #Copiing server files
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip >/dev/null #Downloading and unpacking ngrok
 apt-get install zip unzip >/dev/null
 unzip ngrok.zip >/dev/null
 echo "clear" >> start.sh
 echo "java -Xms512M -Xmx2048M -jar spigot-1.16.3.jar -nogui" >> start.sh
 chmod +x start.sh
 clear
 echo -e "\e[32mComplete!\e[0m"
fi
if [ "${version:-}" = "3" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 echo [*] Downloading and installing server...
 git clone https://github.com/AtherMage/Spigot_1.15.2_Data >/dev/null #Clonning data from GitHub
 cd ..
 wget https://cdn.getbukkit.org/spigot/spigot-1.16.2.jar >/dev/null #Downloading server
 chmod +x spigot-1.16.2.jar
 cd MCSOTIS
 cd Spigot_1.15.2_Data
 cp eula.txt ../..  #Copiing server files
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip >/dev/null #Downloading and unpacking ngrok
 apt-get install zip unzip >/dev/null
 unzip ngrok.zip >/dev/null
 echo "clear" >> start.sh
 echo "java -Xms512M -Xmx2048M -jar spigot-1.16.2.jar -nogui" >> start.sh
 chmod +x start.sh
 clear
 echo -e "\e[32mComplete!\e[0m"
fi
if [ "${version:-}" = "4" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 echo [*]Downloading and installing server...
 git clone https://github.com/AtherMage/Spigot_1.15.2_Data >/dev/null #Clonning data from GitHub
 cd ..
 echo 
 wget https://cdn.getbukkit.org/spigot/spigot-1.16.1.jar >/dev/null #Downloading server
 chmod +x spigot-1.16.1.jar
 cd MCSOTIS
 cd Spigot_1.15.2_Data
 cp eula.txt ../..  #Copiing server files
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip >/dev/null #Downloading and unpacking ngrok
 apt-get install zip unzip >/dev/null
 unzip ngrok.zip >/dev/null 
 echo "clear" >> start.sh
 echo "java -Xms512M -Xmx2048M -jar spigot-1.16.1.jar -nogui" >> start.sh
 chmod +x start.sh
 clear
 echo -e "\e[32mComplete!\e[0m"
fi
if [ "${version:-}" = "5" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 git clone https://github.com/AtherMage/Spigot_1.15.2_Data >/dev/null #Clonning data from GitHub
 cd ..
 echo [*] Downloading and installing server...
 wget https://cdn.getbukkit.org/spigot/spigot-1.15.2.jar >/dev/null #Downloading server
 chmod +x spigot-1.15.2.jar
 cd MCSOTIS
 cd Spigot_1.15.2_Data
 cp eula.txt ../..  #Copiing server files
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip >/dev/null #Downloading and unpacking ngrok
 apt-get install zip unzip >/dev/null
 unzip ngrok.zip >/dev/null
 echo "clear" >> start.sh
 echo "java -Xms512M -Xmx2048M -jar spigot-1.15.2.jar -nogui" >> start.sh
 chmod +x start.sh
 clear
 echo -e "\e[32mComplete!\e[0m"
fi
if [ "${version:-}" = "6" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 echo [*] Downloading and installing server...
 git clone https://github.com/AtherMage/Spigot_1.14.4_Data >/dev/null
 cd ..
 wget https://cdn.getbukkit.org/spigot/spigot-1.14.4.jar >/dev/null
 chmod +x spigot-1.14.4.jar
 cd MCSOTIS
 cd Spigot_1.14.4_Data
 cp eula.txt ../..
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip >/dev/null 
 apt-get install zip unzip >/dev/null
 unzip ngrok.zip >/dev/null 
 echo "clear" >> start.sh
 echo "java -Xms512M -Xmx2048M -jar spigot-1.14.4.jar -nogui" >> start.sh
 chmod +x start.sh
 clear
 echo -e Complete!
fi
if [ "${version:-}" = "7" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 echo [*] Downloading and installing server...
 git clone https://github.com/AtherMage/Spigot_1.12.2_Data >/dev/null
 cd ..
 wget https://cdn.getbukkit.org/spigot/spigot-1.12.2.jar >/dev/null
 chmod +x spigot-1.12.2.jar
 cd MCSOTIS
 cd Spigot_1.12.2_Data
 cp eula.txt ../..
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip >/dev/null
 apt-get install zip unzip >/dev/null
 unzip ngrok.zip >/dev/null
 echo "clear" >> start.sh
 echo "java -Xms512M -Xmx2048M -jar spigot-1.12.2.jar -nogui" >> start.sh
 chmod +x start.sh
 clear
 echo -e Complete!
fi
if [ "${version:-}" = "8" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 cd ..
 echo [*] Downloading and installing server...
 wget -O vanilla_1.15.2.jar https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar >/dev/null
 cd MCSOTIS
 git clone https://github.com/AtherMage/Vanilla_Data >/dev/null
 cd Vanilla_Data
 cp eula.txt ../..
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip >/dev/null
 apt-get install zip unzip >/dev/null
 unzip ngrok.zip >/dev/null
 echo "clear" >> start.sh
 echo "java -Xms512M -Xmx2048M -jar vanilla_1.15.2.jar -nogui" >> start.sh
 chmod +x start.sh vanilla_1.15.2.jar
 clear
 echo -e "\e[32mComplete!\e[0m"
fi
if [ "${version:-}" = "9" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 cd ..
 echo [*] Downloading and installing server...
 wget -O vanilla_1.14.4.jar https://gid-minecraft.ru/download.php?c=minepacks&s=a91030869dbb12d0a4f677621e8a75c2&f=minecraft-server-1.14.4.jar&pid=9014&eid=0&t=1592418627 >/dev/null
 cd MCSOTIS
 git clone https://github.com/AtherMage/Vanilla_Data >/dev/null
 cd Vanilla_Data
 cp eula.txt ../..
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip >/dev/null
 apt-get install zip unzip >/dev/null
 unzip ngrok.zip >/dev/null
 echo "clear" >> start.sh
 echo "java -Xms512M -Xmx2048M -jar vanilla_1.14.4.jar -nogui" >> start.sh
 chmod +x start.sh vanilla_1.14.4.jar
 clear
 echo -e "\e[32mComplete!\e[0m"
fi
if [ "${version:-}" = "10" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 cd ..
 echo [*] Downloading and installing server...
 wget -O vanilla_1.13.2.jar https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar >/dev/null
 cd MCSOTIS
 git clone https://github.com/AtherMage/Vanilla_Data >/dev/null
 cd Vanilla_Data
 cp eula.txt ../..
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip >/dev/null
 apt-get install zip unzip >/dev/null
 unzip ngrok.zip >/dev/null
 echo "clear" >> start.sh
 echo "java -Xms512M -Xmx2048M -jar vanilla_1.13.2.jar -nogui" >> start.sh
 chmod +x start.sh vanilla_1.13.2.jar
 clear
 echo -e "\e[32mComplete!\e[0m"
fi
if [ "${version:-}" = "11" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 cd ..
 echo [*] Downloading and installing server...
 wget -O vanilla_1.12.2.jar https://launcher.mojang.com/mc/game/1.12.2/server/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar >/dev/null
 cd MCSOTIS
 git clone https://github.com/AtherMage/Vanilla_Data >/dev/null
 cd Vanilla_Data
 cp eula.txt ../..
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip >/dev/null
 apt-get install zip unzip >/dev/null
 unzip ngrok.zip >/dev/null
 echo "clear" >> start.sh
 echo "java -Xms512M -Xmx2048M -jar vanilla_1.12.2.jar -nogui" >> start.sh
 chmod +x start.sh vanilla_1.12.2.jar
 clear
 echo -e "\e[32mComplete!\e[0m"
fi
if [ "${version:-}" = "12" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 cd ..
 echo [*] Downloading and installing server...
 wget -O vanilla_1.7.10.jar https://launcher.mojang.com/mc/game/1.7.10/server/952438ac4e01b4d115c5fc38f891710c4941df29/server.jar >/dev/null
 cd MCSOTIS
 git clone https://github.com/AtherMage/Vanilla_Data >/dev/null
 cd Vanilla_Data
 cp eula.txt ../..
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip >/dev/null
 apt-get install zip unzip >/dev/null
 unzip ngrok.zip >/dev/null
 echo "clear" >> start.sh
 echo "java -Xms512M -Xmx2048M -jar vanilla_1.7.10.jar -nogui" >> start.sh
 chmod +x start.sh vanilla_1.7.10.jar
 clear
 echo -e "\e[32mComplete!\e[0m"
fi
if [ "${version:-}" = "13" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 cd ..
 echo [*] Downloading and installing server...
 wget -O minecraft_server.1.12.2.jar https://launcher.mojang.com/mc/game/1.12.2/server/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar >/dev/null
 git clone https://github.com/AtherMage/Forge_1.12.2_Data >/dev/null
 cp -r Forge_1.12.2_Data/* .
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip >/dev/null
 apt-get install zip unzip >/dev/null
 unzip ngrok.zip >/dev/null
 echo "clear" >> start.sh
 echo "java -Xms512M -Xmx2048M -jar forge-1.12.2-14.23.5.2854.jar -nogui" >> start.sh
 chmod +x start.sh forge-1.12.2-14.23.5.2854.jar
 clear
 echo -e "\e[32mComplete!\e[0m"
fi
if [ "${version:-}" = "14" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 cd ..
 echo [*] Downloading and installing server...
 git clone https://github.com/AtherMage/Forge_1.7.10_Data >/dev/null
 cp -r Forge_1.7.10_Data/* .
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip >/dev/null
 apt-get install zip unzip >/dev/null
 unzip ngrok.zip >/dev/null
 echo "clear" >> start.sh
 echo "java -Xms512M -Xmx2048M -jar forge-1.7.10-10.13.4.1614-1.7.10-universal.ja -noguir" >> start.sh
 chmod +x start.sh forge-1.7.10-10.13.4.1614-1.7.10-universal.jar
 clear
 echo -e "\e[32mComplete!\e[0m"
fi
if [ "${version:-}" = "0" ]
then
 clear
 echo [*] Installing Java...
 apt-get update
 apt-get install software-properties-common -y >/dev/null #Installing basic repositories
 apt-get install openjdk-8-jre -y >/dev/null #Installing JDK
 clear
 echo -e "\e[32mComplete!\e[0m"
fi
if [ "${version:-}" = "?" ]
then
 clear
 echo -e "MCSOTIS - MineCraftServerOnTermuxInstallationScript. This script is designed to simplify the process of creating a Minecraft server on your phone. What does it do?
 1) Install Java
 2) Download the selected version
 3) Copy pre-modified files 'eula.txt' and 'server.properties'
 4) Installs NGROK just in case.
 The script is still in development. if you find a bug or want to add support for other versions, write to athermage@gmail.com"
fi
if [ "${version:-}" = "X" ]
then
 clear
 echo -e "Ok, bye!"
fi
fi
if [ "${answer:-}" = "1" ]
then
  cd .. 
  pkg install wget openssl-tool proot -y 
  hash -r 
  wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh 
  bash ubuntu.sh
  echo Now you need to download and launch MCSOTIS in Ubuntu.
fi
