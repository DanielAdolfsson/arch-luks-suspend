# Maintainer: Jonathan Rouleau <jonathan.rouleau@gmail.com>
# Contributor: Vianney le Clément de Saint-Marcq <vleclement AT gmail·com>
pkgname=arch-luks-suspend
pkgver=20190111.ge9605ec
pkgrel=1
pkgdesc='Lock encrypted root volume on suspend'
arch=('any')
url='https://github.com/jrouleau/arch-luks-suspend'
license=('GPL3')
depends=('systemd' 'cryptsetup' 'mkinitcpio')
install=install
conflicts=('arch-luks-suspend-git' 'go-luks-suspend')

pkgver() {
  _date="$(git show -s --format='%ci' | cut -d' ' -f1 | sed 's/-//g')"
  _hash="$(git show -s --format='%h')"
  echo "$_date.g$_hash"
}

package() {
  cd "$startdir"
  make DESTDIR="$pkgdir/" install
}

# vim:set ts=2 sw=2 et:
