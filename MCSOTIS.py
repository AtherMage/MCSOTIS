#By using this script, you confirm that anyone who was involved in the development of this script is not responsible for your device or your actions.

import pathlib
import time
import requests
import os
import platform
import colorama
from colorama import Fore, Back, Style
import config as cfg
import links as lnk
colorama.init()

#Checker.
def checker():
 print("Please wait while MCSOTIS checks everything...")
 print("")
 os_platform = platform.system()
 if os_platform == 'Linux':
  print("OS is supported!")
  os_supported = "true"
 else:
  print("OS is NOT supported, stopping...")
  exit()
 time.sleep(3)

#Version selector. Can be edited to add more versions(links file edit required too)
def version_selector():
 print("Availible versions:\n1) Paper 1.16.5\n2) Paper 1.15.2\n3) Paper 1.14.4\n4) Paper 1.13.2\n5) Paper 1.12.2")
 selected_variant = input(">>> ")
 if int(selected_variant) == 1:
  selected_version = lnk.paper_1_16_5
 elif int(selected_variant) == 2:
  selected_version = lnk.paper_1_15_2
 elif int(selected_variant) == 3:
  selected_version = lnk.paper_1_14_4
 elif int(selected_variant) == 4:
  selected_version = lnk.paper_1_13_2
 elif int(selected_variant) == 5:
  selected_version = lnk.paper_1_12_2
 return selected_version

#Server downloader. Edit it with accuracy, pretty unstable thing.
def downloader():
 dl_link = version_selector()
 print("Please, select a folder for server:\n1) /root/server/ (Linux, Recommended)\n2) Custom (Use if you know what you do!)\n3) Current")
 selected_directory = input(">>> ")
 if selected_directory == "1":
  directory = "/root/server/"
 elif selected_directory == "2":
  print("Enter directory")
  directory = input(">>> ")
 elif selected_directory == "3":
  directory = str(pathlib.Path().absolute()) + "/"
 if not os.path.exists(directory):
    os.makedirs(directory)
 print("Downloading...")
 server_file_data = requests.get(dl_link)
 print("Writiing...")
 open(directory + 'server.jar','wb').write(server_file_data.content)
 print("Creating eula.txt...")
 open(directory + 'eula.txt', 'a').write('eula=true')
 print("Creating start.sh...")
 open(directory + 'start.sh', 'a').write("java -jar server.jar;echo 'Server was stopped, 10 seconds until restart. You can cancel it by Ctrl + C';sleep 10;./start.sh")
 os.system("chmod +x " + directory + "start.sh")
 print(Fore.GREEN + "Done. " + Style.RESET_ALL + "You can start your server by typing './start.sh'")

#Main menu.
def main():
 os.system("clear")
 print(Fore.GREEN + "MCSOTIS v.ALPHA by AtherMage" + Style.RESET_ALL)
 print("============================")
 print("What do you want to do?")
 print("0) Exit \n1) Install Minecraft server\n2) About")
 selected_action = input(">>> ")
 if selected_action == "1":
  downloader()
 elif selected_action == "0":
  exit()
 elif selected_action == "2":
  print("Info: ")
  print("MinecraftServerForTermuxInstallationScript v.ALPHA")
  print("Developer: AtherMage (Telegram: @AtherMage)")
  print("Support Windows/MacOS: NO")
  print("")
  print("Returning in main menu in 10 seconds...")
  time.sleep(10)
  main()

#Launcher. Some kind of BIOS. Required to be in the end of script.
if cfg.check_enabled == 1:
 checker()
 main()
else:
 main()
