diff: config/*

install: packages

packages: basic_packages
	sudo pacman -Sy --noconfirm - < basic_packages
