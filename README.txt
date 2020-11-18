Simple tool, that installs Minecraft on every Linux distro

Dependiences:
-git
-wget
-curl
-sh (this shell is installed on every Linux distro)
-sudo (linux only)


                                                      How to install (Slackware hmm...):
                                                      
Linux x86_64:
$ git clone http://github.com/glowiak/minecraft-client.git && cd minecraft-client && sh minecraft-client-linux-x64_v3.sh

Linux x86:
$ git clone http://github.com/glowiak/minecraft-client.git && cd minecraft-client && sh minecraft-client-linux-x86_v3.sh

macOS:
Download http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar (Java is installed as defualt)

Windows:
Download http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar (You must install Java manually)

Try new offline installer for Linux: https://github.com/glowiak/minecraft-client/releases/download/offline-installer/minecraft-client.cpio.zst
To install with offline installer extract it and run installer for your architecture.

Offline installer dependiences:
-zstd
-cpio
-tar
-gzip

Try new PKGBUILD for ArchLinux:
$ cd /tmp
$ wget --no-check-certificate http://github.com/glowiak/minecraft-client/raw/master/PKGBUILD
$ makepkg
That's all! Minecraft installed in only 3 commands! (You can delete minecraft-client-1.3online.pkg.tar.zst, because it's generated automatily and useless)

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
Latest MC version working on OpenBSD: 1.2.5 (lwjgl 2.9.3)


UPDATE!!!!!!!!!!!!!!!!!!!!! minecraft-client package uses old java launcher and don't support 1.13+ without patches.
To play 1.13+ install new minecraft-launcher_user_build package: https://github.com/glowiak/minecraft-client/releases/download/offline-installer/minecraft-launcher_user_build-0.1-linux.tar.gz

New Minecraft-Client dependiences:
-Java 8
-libcurl

To install it type as root: # cd / && tar xzvf <path to minecraft-launcher_user_build package file>
NOTE!: New Minecraft-Launcher_user_build don't work on CEntOS, so it shouldn't work on redhat.
