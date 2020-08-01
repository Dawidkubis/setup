basic_packages: basic_packages
	sudo pacman -Sy --noconfirm - < basic_packages

alacritty: alacritty/
	rsync -vhrl alacritty/ ~/.config/alacritty/

bspwm: bspwm/ sxhkd fish
	rsync -vhrl bspwm/ ~/.config/bspwm/

conky: conky/
	rsync -vhrl conky/ ~/.config/conky/

dunst: dunst/
	rsync -vhrl dunst/ ~/.config/dunst/

fish: fish/
	rsync -vhrl fish/ ~/.config/fish/

herbstluftwm: herbstluftwm/ fish
	rsync -vhrl herbstluftwm/ ~/.config/herbstluftwm/

nvim: nvim/ fish
	rsync -vhrl nvim/ ~/.config/nvim/
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	sudo pacman -Sy --noconfirm python-pynvim xsel

picom: picom/
	rsync -vhrl picom/ ~/.config/picom/

sxhkd: sxhkd/
	rsync -vhrl sxhkd/ ~/.config/sxhkd/


.PHONY: basic_packages alacritty bspwm conky dunst fish herbstluftwm nvim picom sxhkd 
