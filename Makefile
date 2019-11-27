basic_packages: basic_packages
	sudo pacman -Sy --noconfirm - < basic_packages

laptop_packages: laptop_packages
	sudo pacman -Sy --noconfirm - < basic_packages

nvim: nvim/
	rsync -vhrl nvim/ ~/.config/nvim/
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

herbstluftwm: herbstluftwm/
	rsync -vhrl herbstluftwm ~/.config/herbstluftwm

.PHONY: nvim herbstluftwm
