basic_packages: basic_packages
	sudo pacman -Sy --noconfirm - < basic_packages

nvim: nvim/ fish
	rsync -vhrl nvim/ ~/.config/nvim/
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

herbstluftwm: herbstluftwm/ fish
	rsync -vhrl herbstluftwm/ ~/.config/herbstluftwm/

fish: fish/
	rsync -vhrl fish/ ~/.config/fish/

bspwm: bspwm/ sxhkd fish
	rsync -vhrl bspwm/ ~/.config/bspwm/

sxhkd: sxhkd/
	rsync -vhrl sxhkd/ ~/.config/sxhkd/

alacritty: alacritty/
	rsync -vhrl alacritty/ ~/.config/alacritty/

conky: conky/
	rsync -vhrl conky/ ~/.config/conky/

.PHONY: nvim herbstluftwm fish bspwm basic_packages laptop_packages sxhkd alacritty conky
