set PATH $HOME/bin $PATH
set PATH $HOME/.cargo/bin $PATH
set -U EDITOR nvim

alias ll "exa -l"
alias la "exa -la"

function fish_prompt
	set_color red
	echo (pwd) (set_color yellow)'~> '
  end

neofetch
