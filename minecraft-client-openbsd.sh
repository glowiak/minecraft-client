#!/bin/sh
echo Enter root password if needed...
su root -c "pkg_add lwjgl wget curl"
mkdir ~/mclauncher
cd ~/mclauncher
wget http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar
chmod +x Minecraft.jar
curl -k https://dl2.macupdate.com/images/icons256/52171.png --output icon.png
echo "cd ~/mclauncher" >> ~/mclauncher/launcher.sh
echo "/usr/local/jdk-1.8.0/bin/java -jar Minecraft.jar" >> ~/mclauncher/launcher.sh
echo "[Desktop Entry]" >> ~/Desktop/mc.desktop
echo "Name=Minecraft Launcher" >> ~/Desktop/mc.desktop
echo "Exec=sh ${HOME}/mclauncher/launcher.sh" >> ~/Desktop/mc.desktop
echo "Icon=${HOME}/mclauncher/icon.png" >> ~/Desktop/mc.desktop
echo "Terminal=false" >> ~/Desktop/mc.desktop
echo "Type=Application" >> ~/Desktop/mc.desktop
chmod +x ${HOME}/Desktop/mc.desktop
echo WARNING: You can run only old versions of Minecraft,
echo because LWJGL3 is not supproted under OpenBSD,
echo To play latest Minecraft install FreeBSD or Linux.
echo Minecraft Launcher vOpenBSD installed!