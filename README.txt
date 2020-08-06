Simple tool, that installs Minecraft on every Linux distro

Dependiences:
-git
-wget
-curl
-sh (this shell is installed on every Linux distro)

Dependienses installing by installer on OpenBSD:
-jdk-1.8.0
-lwjgl
-wget
-curl

                                                      How to install (Slackware hmm...):
                                                      
Linux x86_64:
$ git clone http://github.com/glowiak/minecraft-client.git && cd minecraft-client && sh minecraft-client-linux-x64_v3.sh

Linux x86:
$ git clone http://github.com/glowiak/minecraft-client.git && cd minecraft-client && sh minecraft-client-linux-x86_v3.sh

macOS:
Download http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar (Java is installed as defualt)

Windows:
Download http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar (You must install Java manually)

OpenBSD (all architectures):
$ git clone http://github.com/glowiak/minecraft-client.git && cd minecraft-client && sh minecraft-client-openbsd.sh

NetBSD (all architectures):
NetBSD version is cooming...

FreeBSD (all architectures):
$ su root -c "pkg install minecraft-client"

How to install Dependiences:

Linux:
$ su root -c "<packagemanager> git wget curl"

OpenBSD:
$ su root -c "pkg_add git wget curl"

NetBSD:
cooming...

FreeBSD:
Dependiences are installed by installer.

OPENBSD WARNING: You can run only old versions of Minecraft, because LWJGL3 is not supproted under OpenBSD
