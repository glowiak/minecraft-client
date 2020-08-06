Simple tool, that installs Minecraft on every Linux distro

Dependiences:
-git
-wget
-curl
-sh (this shell is installed on every Linux distro)


                                                      How to install (Slackware hmm...):
                                                      
Linux x86_64:
$ git clone http://github.com/glowiak/minecraft-client.git && cd minecraft-client && sh minecraft-client-linux-x64_v3.sh

Linux x86:
$ git clone http://github.com/glowiak/minecraft-client.git && cd minecraft-client && sh minecraft-client-linux-x86_v3.sh

macOS:
Download http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar (Java is installed as defualt)

Windows:
Download http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar (You must install Java manually)

Instructions for OpenBSD (installer is broken by ksh):
$ mkdir ${HOME}/mclauncher && cd ${HOME}/mclauncher
$ su root -c "pkg_add lwjgl curl"
$ curl -k http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar --output Minecraft.jar
$ chmod +x Minecraft.jar
$ echo "#!/bin/sh" >> launcher.sh
$ echo "cd ${HOME}/mclauncher" >> launcher.sh
$ echo "/usr/local/jdk-1.8.0/bin/java -jar ${HOME}/mclauncher/Minecraft.jar" >> launcher.sh
//To start Launcher type: sh ${HOME}/mclauncher/launcher.sh

Instructions for NetBSD:
$ mkdir ${HOME}/mclauncher && cd ${HOME}/mclauncher
$ su root -c "pkgin install openjdk8 curl"
$ curl -k http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar --output Minecraft.jar
$ chmod +x Minecraft.jar
$ echo "/usr/pkg/java/openjdk8/bin/java -jar ${HOME}/mclauncher/Minecraft.jar" >> launcher.sh
//To start Launcher type: sh ${HOME}/mclauncher/launcher.sh

FreeBSD (all architectures):
$ su root -c "pkg install minecraft-client"

How to install Dependiences:

Linux:
$ su root -c "<packagemanager> git wget curl"

OpenBSD:
$ su root -c "pkg_add git curl"

NetBSD:
$ su root -c "pkgin install git curl"

FreeBSD:
Dependiences are installed by installer.

OPENBSD WARNING: You can run only old versions of Minecraft, because LWJGL3 is not supproted under OpenBSD

Latest MC version working on NetBSD: 1.2.5 (lwjgl 2.9.0)
Latest MC version working on FreeBSD: latest
Latest MC version working on Linux: latest
Latest MC version working on OpenBSD: I will test it
