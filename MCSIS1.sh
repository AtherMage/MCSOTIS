clear
read -p 'Hey. This is the installer of the minecraft server on your phone. Make sure you run this script in Ubuntu, and choose the version:
1) Spigot 1.15.2
2) Spigot 1.14.4
3) Forge 1.12.2
4) Forge 1.7.10
To request support for other versions, write to athermage@gmail.com in English or Russian.
Script by AtherMage with Love <3
Version:' userinput1;
#
if [ "${userinput1:-}" = "1" ]
then
	cd  .. && apt-get install software-properties-common -y && add-apt-repository ppa:openjdk-r/ppa && apt-get update && apt-get install openjdk-8-jre -y && git clone https://github.com/AtherMage/Spigot_1.15.2_Data && cd ..  && wget https://cdn.getbukkit.org/spigot/spigot-1.15.2.jar && chmod +x spigot-1.15.2.jar && java -Xms512M -Xmx1536M -jar spigot-1.15.2.jar && rm -r eula.txt && cd MCSIS && cd Spigot_1.15.2_Data && cp eula.txt ../.. && cp server.properties ../.. && cd ../.. && echo -e Installation complete!
fi
