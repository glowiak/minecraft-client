pkgname=minecraft-client
pkgver=1.3online
pkgrel=1
pkgdesc="Unofficial Minecraft Installer for Linux"
arch=('x86_64')
url="https://github.com/glowiak/minecraft-client"
license=('none')
depends=('tar' 'curl' 'wget' 'sh' 'sudo' 'alsa-lib' 'git' 'xorg-server')
optdepends=('flite: narrator support')
conflicts=('snapd')
provides=('minecraft-client')

build() {

  cd /tmp

}

package () {

  cd /tmp
  git clone http://github.com/glowiak/minecraft-client.git
  cd minecraft-client
  sh minecraft-client-linux-x64_v3.sh
  mkdir -p /usr/share/applications
  cp ${HOME}/Desktop/mc.desktop /usr/share/applications
  cp ${HOME}/Pulpit/mc.desktop /usr/share/applications
}
