#By using this script, you confirm that anyone who was involved in the development of this script is not responsible for your device or your actions.

import pathlib
import time
import requests
import os
import platform
import colorama
import psutil
from colorama import Fore, Back, Style
from random import randint
import config as cfg
import links as lnk
colorama.init()

os_platform = ""
recommended_ram = 0

#Checker.
def checker():
 print("Please wait while MCSOTIS checks everything...")
 print("")
 global os_platform
 os_platform = platform.system()
 if os_platform == 'Linux' or 'Windows':
  print("OS is supported!")
  termux_test_0 = os.popen("echo $PREFIX")
  termux_test = termux_test_0.read()
  if 'com.termux' in termux_test:
   print("We have just found out you are using Termux.")
   time.sleep(2)
   os.system("clear")
   termux_prepare()
 else:
  print("OS is NOT supported, stopping...")
  exit()
 time.sleep(3)

def easter_egg_selector():
  easter_egg_list = ["Just Monika.", "thanks mirivan", "thanks zhazhazha", "fuck you termux", "writing easter egg list while listening to Linkin Park", "Bedrock edition sucks"]
  easter_egg_num = randint(0,5)
  easter_egg = easter_egg_list[easter_egg_num]
  return easter_egg
def ram_selector():
 total_ram_raw = int(psutil.virtual_memory().total)
 total_ram_mb = total_ram_raw / 1024 / 1024
 global recommended_ram 
 recommended_ram = int(total_ram_mb / 3)

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
 #Getting download link by using version selector
 dl_link = version_selector()
 #Selecting directory for server
 print("Please, select a folder for server:\n1) /root/server/ (Linux, Recommended)\n2) Custom (Use if you know what you do!)\n3) Current")
 selected_directory = input(">>> ")
 if selected_directory == "1":
  directory = "/root/server/"
 elif selected_directory == "2":
  print("Enter directory")
  directory = input(">>> ")
 elif selected_directory == "3":
  directory = str(pathlib.Path().absolute()) + "/"
 else:
   print('Wrong input, exiting...')
   exit()
 if not os.path.exists(directory):
    os.makedirs(directory)
 #Selecting ram size
 ram_selector()
 global recommended_ram
 print('Please, select RAM size for server:\n1) ' + str(recommended_ram) + ' MB (automatically calculated)\n2) Custom\n3) 2 GB (optimal)')
 selected_ram = input('>>> ')
 if selected_ram == '1':
   ram_for_server = recommended_ram
 elif selected_ram == '2':
   ram_for_server = int(input('Enter RAM in MB\n>>> '))
 elif selected_ram == '3':
   ram_for_server = 2048
 else:
   print('Wrong input, exiting...')
   exit()
 print("Downloading...")
 server_file_data = requests.get(dl_link)
 print("Writiing...")
 open(directory + 'server.jar','wb').write(server_file_data.content)
 print("Creating eula.txt...")
 open(directory + 'eula.txt', 'a').write('eula=true')
 global os_platform
 if os_platform == 'Linux':
  print("Creating start.sh...")
  open(directory + 'start.sh', 'a').write("java -Xms" + str(ram_for_server) + "M -Xmx" + str(ram_for_server) + "M -jar server.jar;echo 'Server was stopped, 10 seconds until restart. You can cancel it by Ctrl + C';sleep 10;./start.sh")
  os.system("chmod +x " + directory + "start.sh")
 if os_platform == 'Windows':
  print("Creating start.bat...")
  open(directory + 'start.bat', 'a').write("java -Xms" + str(ram_for_server) + "M -Xmx" + str(ram_for_server) + "M -jar server.jar")
 print(Fore.GREEN + "Done. " + Style.RESET_ALL + "You can start your server by typing './start.sh' or 'start.bat'")

def termux_prepare():
 print("Do you want to install Ubuntu? (y/n) (external script will be used, credits in 'About')")
 y_or_n = input(">>> ")
 if y_or_n == "n":
  print("Okay, bye!")
  exit()
 elif y_or_n == "y":
  print("Okay, please wait...")
  print(Fore.RED + "Everything down is external script logs! Please answer 'y' here:" + Style.RESET_ALL)
  os.system("cd ~ && git clone https://github.com/MFDGaming/ubuntu-in-termux && cd ubuntu-in-termux && bash ubuntu.sh")
  print("Here we are, boring white MCSOTIS' logs again!")
  print("Editiing Ubuntu's bashrc...")
  os.system("cd ~/ubuntu-in-termux/ubuntu-fs/root && cp .bashrc bashrcbackup && rm .bashrc && echo 'bash mcsotis_continue.sh' >> .bashrc && cp ~/MCSOTIS/mcsotis_continue.sh .")
  print("Done, starting Ubuntu...")
  print(Fore.RED + "External logs again, but here is a lot of it this time" + Style.RESET_ALL)
  os.system("cd ~/ubuntu-in-termux/ && ./startubuntu.sh")

#Main menu.
def main():
 global os_platform
 if os_platform == "Linux":
   os.system("clear")
 if os_platform == 'Windows':
   os.system('cls')
 print(Fore.GREEN + "MCSOTIS v.ALPHA by AtherMage" + Style.RESET_ALL)
 print("============================")
 if cfg.easter_eggs_enabled == 1:
   e_egg = easter_egg_selector()
   print(Fore.GREEN + e_egg + Style.RESET_ALL)
   print("============================")
 print("What do you want to do?")
 print("0) Exit \n1) Install Minecraft server\n2) Prepare my Termux for minecraft server (Use if we wasn't able to detect your Termux for some reason)\n3) About")
 selected_action = input(">>> ")
 if selected_action == "1":
  downloader()
 elif selected_action == "0":
  exit()
 elif selected_action == "3":
  print("Info: \n")
  print("MinecraftServerForTermuxInstallationScript v.ALPHA")
  print("Developer: AtherMage (Telegram: @AtherMage)")
  print("Ubuntu install script: https://github.com/MFDGaming/ubuntu-in-termux/")
  print("Support Windows/MacOS: Windows yes, MacOS not tested")
  print("")
  print("Returning in main menu in 10 seconds...")
  time.sleep(10)
  main()
 elif selected_action == "2":
  termux_prepare()
 else:
  print(Fore.YELLOW + "Wrong input, going back to main menu..." + Style.RESET_ALL)
  time.sleep(1)
  main()

#Launcher. Some kind of BIOS. Required to be in the end of script.
if cfg.check_enabled == 1:
 checker()
 main()
else:
 main()
