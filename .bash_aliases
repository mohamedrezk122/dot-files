#!/bin/sh

#   	 _ _
#   __ _| (_) __ _ ___  ___  ___
#  / _` | | |/ _` / __|/ _ \/ __|
# | (_| | | | (_| \__ \  __/\__ \
#  \__,_|_|_|\__,_|___/\___||___/



# shell commands
alias ls='ls --color=auto'
alias ll="ls -a"
alias cls=clear
# alias exit='kill -9 $(ps -p $PPID -o ppid=)'
alias x=exit
alias doas="doas "

# i3 
alias i3conf="micro ~/.config/i3/config"
alias i3bconf="micro ~/.config/i3blocks/config"

# text editors  
alias s="subl4"
alias m="micro"
alias v="vim"
alias nv="nvim" 
alias r="ranger"
alias z="zathura "
#scripts 
alias sb="~/.scripts/statusbar"
# Latex
alias tlmgr="doas tlmgr "

# xbps 
alias xu='doas xbps-install -Suv'       # update packages 
alias xi='doas xbps-install'            # install package 
alias xr='doas xbps-remove -Rcon'       # remove cache, dependencies and orphans 
alias xfr='doas xbps-remove -Rcon -F'   # force remove package 
alias xl='xbps-query -l'                # list all installed packages 
alias xf='xl | grep'                    # search in installed packages
alias xs='xbps-query -Rs'               # query package in repos  
alias xd='xbps-query -x'                # query package dependencies

# Flatpak  
alias fu='flatpak update'
alias fi='flatpak install'
alias ff='flatpak repair'
alias fs='flatpak search'
alias fl='flatpak list'
alias fr='flatpak uninstall --delete-data'
alias fc='flatpak uninstall –-unused'

# session management
alias reboot="doas reboot"
alias halt='doas halt'
alias shutdown='doas shutdown'
alias zzz='doas zzz'

alias gsoc="/home/rezk/Documents/Internships/gsoc/networkx"
alias obsidian="~/pkgs/Obsidian-1.1.9.AppImage & disown "
alias f1="~/Documents/Robotics/f1tenth/"
alias limit_net="doas python3 ~/pkgs/evillimiter/bin/evillimiter"
alias conservation="doas sh ~/.scripts/conservation.sh"
alias mp42mov="doas sh ~/.scripts/mp42mov.sh"
alias report="sh ~/.scripts/auto-report.sh"
alias problem="sh ~/.scripts/comp-prog.sh"

# dirs
#Data Structures
alias ds="/home/rezk/Documents/courses/CS/Data\ Structures/"
alias dsw="/home/rezk/Documents/courses/CS/Data\ Structures/Dr\ waleed\'s\ course/"
alias ods="subl4 /home/rezk/Documents/courses/CS/Data\ Structures/Dr\ waleed\'s\ course/codes/"
#Blog
alias blog="/home/rezk/Documents/Blog/Lagrange" 
alias oblog="subl4 /home/rezk/Documents/Blog/Lagrange"
#projects
alias intern="/home/rezk/Documents/Internships/Acoustic\ center\ internship\ \'22/"
alias ointern="subl4 /home/rezk/Documents/Internships/Acoustic\ center\ internship\ \'22/codes"
alias odoc="subl4 /home/rezk/Documents/Internships/Acoustic\ center\ internship\ \'22/Final\ Report"
alias nasa="subl4 ~/Documents/NASA/codes"
alias pro="~/Documents/projects/"

# college
alias signals="~/Documents/college/3-Junior/semester-5/signals"
alias org="~/Documents/college/3-Junior/semester-5/computer\ organization"
alias cont="~/Documents/college/3-Junior/semester-5/control"
alias material="~/Documents/college/3-Junior/semester-5/materials"
alias arts="~/Documents/college/3-Junior/semester-5/arts"
alias electronics="~/Documents/college/3-Junior/semester-5/electronics"
alias discrete="~/Documents/college/3-Junior/semester-5/discrete"

alias prog="~/Documents/college/3-Junior/semester-6/advanced-programming"
alias control="~/Documents/college/3-Junior/semester-6/control"
alias com="~/Documents/college/3-Junior/semester-6/communication-systems"
alias human="~/Documents/college/3-Junior/semester-6/human-rights"
alias digital="~/Documents/college/3-Junior/semester-6/digital-circuits"
alias em="~/Documents/college/3-Junior/semester-6/embedded-systems"
alias energy="~/Documents/college/3-Junior/semester-6/energy"


# courses
alias gtr="~/Documents/courses/CS/computational-geometry"
alias down_audio="yt-dlp --extract-audio"
alias arduino_ide="~/Downloads/arduino-ide_2.0.2_Linux_64bit/arduino-ide & disown"


## FUNCTIONS 

rmd (){
	Rscript -e "rmarkdown::render('$1')"

}
get_pass() {

    pass "$1" | xclip -selection clipboard
}

gen_pass(){

    pwgen -By 30 1 | xclip -selection clipboard
}

change_mac(){
    doas ifconfig wlp4s0 down
    doas macchanger -r wlp4s0
    doas ifconfig wlp4s0 up 
}

sync(){
	/home/rezk/.scripts/sync $1 
}