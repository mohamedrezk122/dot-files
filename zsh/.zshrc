#zmodload zsh/zprof
export ZSH="$HOME/.oh-my-zsh"

# ignore duplicates and spaces 
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

 
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"

if ! [[ "$(ps -p $(ps -p $(echo $$) -o ppid=) -o comm=)" =~ 'bicon'* ]]; then
	exec bicon.bin
fi

colorscript -e 45
source $ZSH/oh-my-zsh.sh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.bashrc
source ~/.bash_aliases

export PROMPT_DIRTRIM=3
export PROMPT="%B%F{3}[%n%f@%F{1}%m%f%b %F{100}%(4~|.../%2~|%~)%f %B%F{3}]%f%b $ "



autoload -U colors && colors	# Load colors

HISTSIZE=10000000
SAVEHIST=10000000

