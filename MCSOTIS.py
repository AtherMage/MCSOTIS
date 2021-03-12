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
  termux_test_0 = os.popen("echo $PREFIX")
  termux_test = termux_test_0.read()
  if 'com.termux' in termux_test:
   print("We have just found out you are using Termux.")
   time.sleep(2)
   os.system("clear")
   termux.prepare()
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
 os.system("clear")
 print(Fore.GREEN + "MCSOTIS v.ALPHA by AtherMage" + Style.RESET_ALL)
 print("============================")
 print("What do you want to do?")
 print("0) Exit \n1) Install Minecraft server\n2) Prepare my Termux for minecraft server (Use if we wasn't able to detect your Termux for some reason)\n3) About")
 selected_action = input(">>> ")
 if selected_action == "1":
  downloader()
 elif selected_action == "0":
  exit()
 elif selected_action == "3":
  print("Info: ")
  print("MinecraftServerForTermuxInstallationScript v.ALPHA")
  print("Developer: AtherMage (Telegram: @AtherMage)")
  print("Ubuntu install script: https://github.com/MFDGaming/ubuntu-in-termux/")
  print("Support Windows/MacOS: NO")
  print("")
  print("Returning in main menu in 10 seconds...")
  time.sleep(10)
  main()
 elif selected_action == "2":
  termux_prepare()
 else:
  print(Fore.RED + "Wrong input, going back to main menu..." + Style.RESET_ALL)
  time.sleep(1)
  main()

#Launcher. Some kind of BIOS. Required to be in the end of script.
if cfg.check_enabled == 1:
 checker()
 main()
else:
 main()
