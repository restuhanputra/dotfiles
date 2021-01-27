set fish_greeting

# PATH #

#.local/bin
set PATH $HOME/.local/bin $PATH

# Composer

set PATH $HOME/.composer/vendor/bin $PATH

# Node Module
set PATH $HOME/.node_modules/bin $PATH

# Python3
set PATH /usr/bin/python3/bin $PATH

#go
set PATH $PATH:$HOME/go/bin $PATH

#path_add <space> <paste OR type path> <enter>

# ALIAS #
#----------------------------------------------------------------------- ls & cd
#alias ls='ls --color=auto'
alias ls='colorls'
alias lx="exa -l -h"
alias lsf="ls --group-directories-first --color=auto"
alias l.='ls -d .* --color=auto'

alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias cpr='sudo cp -r'
alias schmod='sudo chmod'
alias schown='sudo chown'
alias snano='sudo nano'
alias svim='sudo vim'

#----------------------------------------------------------------------- clear
alias q='~ && clear'

#----------------------------------------------------------------------- .zshrc reload
alias rzsh='source ~/.zshrc'

#----------------------------------------------------------------------- fish reload
alias rfish='source ~/.config/fish/config.fish'

#----------------------------------------------------------------------- ProjectFolder
alias pj='cd ~/Project'

#----------------------------------------------------------------------- Power Management
alias reboot='sudo systemctl reboot'
alias poweroff='sudo systemctl poweroff'
alias halt='sudo systemctl halt'

#----------------------------------------------------------------------- Check
alias ckm='sudo ps_mem -S | lolcat'
alias botm='systemd-analyze | lolcat'
alias meminfo='free -m -l -t'
alias cpuinfo='lscpu'

#----------------------------------------------------------------------- Neofetch
#alias neo='neofetch --config ~/.config/neofetch/myconfig.conf | lolcat'
alias spek='neofetch --config ~/.config/neofetch/arch.conf | lolcat'
alias speki='neofetch --config ~/.config/neofetch/archh.conf | lolcat'

#--------------------------------------------------------------------- PHP Server & LAMP
alias php-server-start="sudo systemctl start httpd mysqld && sudo systemctl status httpd mysqld |  grep -i --max-count=4 'httpd.service - Apache Web Server\|active:\|mariadb.service - MariaDB' "

alias php-server-stop="sudo systemctl stop httpd mysqld && sudo systemctl status httpd mysqld |  grep -i --max-count=4 'httpd.service - Apache Web Server\|active:\|mariadb.service - MariaDB' "

alias php-server-status="sudo systemctl status httpd mysqld |  grep -i --max-count=4 'httpd.service - Apache Web Server\|active:\|mariadb.service - MariaDB' "

alias php-server-restart="sudo systemctl restart httpd mysqld && sudo systemctl status httpd mysqld |  grep -i --max-count=4 'httpd.service - Apache Web Server\|active:\|mariadb.service - MariaDB' "

#------------------------------------------------------------------- Check Apache Module
alias apache-M='httpd -M'

#----------------------------------------------------------------------- HTDOCS
alias htd='cd /srv/http/'

#----------------------------------------------------------------------- PACMAN
alias pacman-U='sudo pacman -Syy && sudo pacman -Syu'
alias pacman-S='sudo pacman -S '
alias pacman-R='sudo pacman -Rs '
alias pacman-Mir='sudo pacman-mirrors --country Indonesia && sudo pacman -Syyu'
#To clear the cache of packages that are no longer installed, enter the following command
alias pacman-Cc='sudo pacman -Sc'
alias pacman-Chace='du -sh /var/cache/pacman/pkg/'

#----------------------------------------------------------------------- Sudo
alias x+='chmod +x'
alias cpr='sudo cp -r'
alias schmod='sudo chmod'
alias schown='sudo chown'

#----------------------------------------------------------------------- Chown
#alias chown-R="sudo chown $user:$user -R "

#----------------------------------------------------------------------- Grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#----------------------------------------------------------------------- History
alias h='history'

#----------------------------------------------------------------------- Console Editor
alias svim='sudo vim'
alias snano='sudo nano'

#----------------------------------------------------------------------- MPD
alias status-mpd='mpd --no-daemon --stdout --verbose'
alias stop-mpd='mpd --kill'

#----------------------------------------------------------------------- PING
alias pingg='ping -c 10 '
alias ping8='ping -c 10 8.8.8.8'

#----------------------------------------------------------------------- GIT
alias gin="git init"
alias ga="git add "
alias ga.="git add ."
alias gs="git status"
alias gl="git log"
alias glo="git log --oneline"
alias gd="git diff"
alias grm="git rm -rf"
alias grbs="git pull --rebase origin master"
alias grmt="git remote add origin "
alias gcom="git commit -m "
alias gpus="git push origin master"
alias ggrph="git log --all --decorate --oneline --graph"

#----------------------------------------------------------------------- Udisksctl
alias umont="udisksctl umount -b /dev/sdb"
alias uoff="udisksctl power-off -b /dev/sdb"
alias ustat="udisksctl status"
alias ofd="udisksctl unmount -b /dev/sdb1 && udisksctl power-off -b /dev/sdb1 "

#----------------------------------------------------------------------- Hugo
alias hugo-n="hugo new "

#----------------------------------------------------------------------- Laravel
alias lrv-i="composer create-project --prefer-dist laravel/laravel "
alias art-start="php artisan serve"
alias art-c="php artisan make:controller "
alias art-m="php artisan make:model "
alias art-mig="php artisan make:migration "
alias art-mgrt="php artisan migrate "
alias art-midd="php artisan make:middleware "
alias art-r="php artisan route:list"