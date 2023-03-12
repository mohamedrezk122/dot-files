# .bashrc
# _               _
#| |__   __ _ ___| |__  _ __ ___
#| '_ \ / _` / __| '_ \| '__/ __|
#| |_) | (_| \__ \ | | | | | (__
#|_.__/ \__,_|___/_| |_|_|  \___|


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$rexset_color%}$%b "
# PS1="~>"

export FileManager=ranger
export BROWSER=brave-browser-stable



export PATH=/opt/texlive/2022/bin/x86_64-linux/tlmgr:$PATH
export PATH=/home/rezk/.local/bin:$PATH
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
export PATH=/opt/texlive/2022/bin/x86_64-linux/:$PATH
export PATH=/home/rezk/pkgs/julia-1.8.0/bin/:$PATH
export PATH=/home/rezk/Documents/college/3-Junior/semester-6/embedded-systems/setup/gcc-arm-none-eabi-8-2018-q4-major/bin/:$PATH



