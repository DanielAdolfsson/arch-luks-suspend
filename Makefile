.PHONY: all install

INSTALL_DIR := /usr/lib/arch-luks-suspend

all:

install:
	install -Dm755 arch-luks-suspend "$(DESTDIR)$(INSTALL_DIR)/arch-luks-suspend"
	install -Dm755 initramfs-suspend "$(DESTDIR)$(INSTALL_DIR)/initramfs-suspend"
	install -Dm644 initcpio-hook "$(DESTDIR)/usr/lib/initcpio/install/suspend"
	install -Dm644 arch-luks-suspend.service "$(DESTDIR)/usr/lib/systemd/system/arch-luks-suspend.service"

# vim:set sw=4 ts=4 noet:
