export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"

plugins=(git)


#  fortune -n  200  | cowsay -f daemon | lolcat


source $ZSH/oh-my-zsh.sh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.bashrc
source ~/.bash_aliases


autoload -U colors && colors	# Load colors

HISTSIZE=10000000
SAVEHIST=10000000

