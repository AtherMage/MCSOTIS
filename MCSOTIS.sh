clear
read -p 'Hey. This is the installer of the minecraft server on your phone. Make sure you run this script in Ubuntu, and choose the version:
1) Spigot 1.15.2
2) Spigot 1.14.4
3) Spigot 1.12.2
4) Vanilla 1.15.2 
5) Only install Java Development Kit (JDK) 
To request support for other versions, write to athermage@gmail.com in English or Russian.
Script by AtherMage with Love <3
Version:' userinput1;
#
if [ "${userinput1:-}" = "1" ]
then
 apt-get install software-properties-common -y #Installing basic repositories
 add-apt-repository ppa:openjdk-r/ppa #Adding JDK to repositories list
 apt-get update #Updating all repositories
 apt-get install openjdk-8-jre -y  #Installing JDK
 git clone https://github.com/AtherMage/Spigot_1.15.2_Data  #Clonning data from GitHub
 cd ..   
 wget https://cdn.getbukkit.org/spigot/spigot-1.15.2.jar  #Downloading server
 chmod +x spigot-1.15.2.jar  
 cd MCSOTIS  
 cd Spigot_1.15.2_Data  
 cp eula.txt ../..  #Copiing server files
 cp server.properties ../..  
 cd ../..  
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip  #Downloading and unpacking ngrok
 apt-get install zip unzip  
 unzip ngrok.zip  
 clear  
 echo -e Complete!
fi
if [ "${userinput1:-}" = "2" ]
then
 apt-get install software-properties-common -y  
 add-apt-repository ppa:openjdk-r/ppa  
 apt-get update  
 apt-get install openjdk-8-jre -y  
 git clone https://github.com/AtherMage/Spigot_1.14.4_Data   
 cd ..
 wget https://cdn.getbukkit.org/spigot/spigot-1.14.4.jar  
 chmod +x spigot-1.14.4.jar   
 cd MCSOTIS  
 cd Spigot_1.14.4_Data  
 cp eula.txt ../..
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip
 apt-get install zip unzip
 unzip ngrok.zip
 clear
 echo -e Complete!
fi
if [ "${userinput1:-}" = "3" ]
then
 apt-get install software-properties-common -y
 add-apt-repository ppa:openjdk-r/ppa
 apt-get update
 apt-get install openjdk-8-jre -y
 git clone https://github.com/AtherMage/Spigot_1.12.2_Data
 cd ..
 wget https://cdn.getbukkit.org/spigot/spigot-1.12.2.jar
 chmod +x spigot-1.12.2.jar
 cd MCSOTIS
 cd Spigot_1.12.2_Data
 cp eula.txt ../..
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip
 apt-get install zip unzip
 unzip ngrok.zip
 clear
 echo -e Complete!
fi
if [ "${userinput1:-}" = "4" ]
then
 apt-get install software-properties-common -y 
 add-apt-repository ppa:openjdk-r/ppa
 apt-get updateapt-get install openjdk-8-jre -y
 cd ..
 wget -O vanilla_1.15.2.jar https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar
 cd MCSOTIS
 git clone https://github.com/AtherMage/Vanilla_Data
 cd Vanilla_Data
 cp eula.txt ../..
 cp server.properties ../..
 cd ../..
 wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip
 apt-get install zip unzip
 unzip ngrok.zip
 echo "java -Xms512M -Xmx2048M -jar vanilla_1.15.2.jar" >> start.sh
 chmod +x start.sh vanilla_1.15.2.jar
 clear
 echo -e Complete!
fi
if [ "${userinput1:-}" = "5" ]
then 
 apt-get install software-properties-common -y
 add-apt-repository ppa:openjdk-r/ppa
 apt-get update
 apt-get install openjdk-8-jre -y
 clear
 echo -e Complete! 
fi
#Hey!
