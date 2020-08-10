#!/bin/sh
# Minecraft Installer for Linux x86
jre86="http://mirr2.crystal-launcher.pl/jre/jre-8u181-linux-i586.tar.gz"
launcher_jar="http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar"
fetcher="wget"
sudo xbps-install -S curl
sudo xbps-install -S wget
sudo zypper in curl
sudo apt-get install curl
sudo pacman -S curl
sudo dnf install curl
sudo yum install curl
sudo emerge curl
sudo zypper in ${fetcher}
sudo apt-get install ${fetcher}
sudo pacman -S ${fetcher}
sudo dnf install ${fetcher}
sudo yum install ${fetcher}
sudo emerge ${fetcher}
mkdir ~/mclauncher
cd ~/mclauncher
wget ${jre86}
wget ${launcher_jar}
curl -k https://dl2.macupdate.com/images/icons256/52171.png --output icon.png
tar -xvf jre-8u181-linux-i586.tar.gz
chmod +x Minecraft.jar
echo "#!/bin/sh" >> ~/mclauncher/launcher.sh
echo "cd ~/mclauncher" >> ~/mclauncher/launcher.sh
echo "jre1.8.0_181/bin/java -jar Minecraft.jar" >> ~/mclauncher/launcher.sh
echo "[Desktop Entry]" >> ~/Desktop/mc.desktop
echo "[Desktop Entry]" >> ~/Pulpit/mc.desktop
echo "Name=Minecraft" >> ~/Desktop/mc.desktop
echo "Name=Minecraft" >> ~/Pulpit/mc.desktop
echo "Icon=${HOME}/mclauncher/icon.png" >> ~/Desktop/mc.desktop
echo "Icon=${HOME}/mclauncher/icon.png" >> ~/Pulpit/mc.desktop
echo "Exec=sh ${HOME}/mclauncher/launcher.sh" >> ~/Desktop/mc.desktop
echo "Exec=sh ${HOME}/mclauncher/launcher.sh" >> ~/Pulpit/mc.desktop
echo "Terminal=false" >> ~/Desktop/mc.desktop
echo "Terminal=false" >> ~/Pulpit/mc.desktop
echo "Type=Application" >> ~/Desktop/mc.desktop
echo "Type=Application" >> ~/Pulpit/mc.desktop
chmod +x ~/Desktop/mc.desktop
chmod +x ~/Pulpit/mc.desktop
echo Minecraft is installed!
