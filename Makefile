install: packages configs

laptop: l_packages

configs: config
	rsync -vhrl config/ ~/.config/

packages: basic_packages
	sudo pacman -Sy --noconfirm - < basic_packages

l_packages:
	sudo pacman -Sy --noconfirm - < laptop_packages
