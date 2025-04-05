# PS1=' ${PWD}  -->> '
PS1=' -->> '

# without this, arrow keys
# and tab completion were bugged
set -o emacs

alias krc='vim ~/.kshrc'
alias src='. ~/.kshrc'

alias ll='ls -l'
alias la='ls -a'
alias ldot='ls .*'

alias c=clear
alias cl=clear

alias install='yes | doas pkg install'
alias update='yes | doas pkg update'
alias search='pkg search'
alias vi=vim
alias dvim='doas vim'
alias reboot='doas reboot'
alias restart='doas reboot'
alias off='doas poweroff'
alias b='acpiconf -i 0 | grep Remain'
alias batt='acpiconf -i 0 | grep Remain'
alias ifc=ifconfig
alias ifup='doas ifconfig wlan0 up'
alias ifdown='doas ifconfig wlan0 down'

alias l='ls -cpv --color=auto'
alias ls='ls -cpv --color=auto'
alias sl='ls -cp --color=auto'
alias la='ls -acp --color=auto'

# alias install='yes | sudo dnf install'
# alias search='dnf search'

alias ff='firefox >/dev/null 2>/dev/null &'
alias wiscan='ifconfig wlan0 scan'
alias tasks='vim ~/Documents/tasks.txt'
alias m=mplayer
alias menu='sudo vi /boot/grub/grub.cfg'
alias lo='libreoffice >/dev/null 2>/dev/null &'
alias poweroff='sudo poweroff'
alias mount='sudo mount'
alias umount='sudo umount'
alias du='du -hs'
alias py=python
alias ldev='ls /dev/ | grep sd'
alias lynx='lynx -vikeys'
alias x0='xbacklight -dec 100'
alias phys='epdfview /home/jbm/classes/physics/physics*every*pdf*'
alias keys='vi /home/jbm/.fluxbox/keys'
alias df='df -h | grep home'
alias ping='ping -c 3 ddg.gg'
alias mupdf="firejail /bin/mupdf"
alias free='free -h'
alias lock=slock
alias mulcon='mullvad connect'
alias grep='grep -i'
alias path='echo -e ${PATH//:/"\n"} | lolcat'
alias areacode='cat ~/Documents/areacodes.txt | grep'
alias more=less
alias rmd='rm -r'
alias vlc='vlc --rate'
alias wthr='perl ~/scripts/wthr.pl'
alias newhop='perl ~/perl/relays.pl; sleep 5; ipaddr'

# :xdigit: for hexidecimal characters
alias macgrep="grep -Eo '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'"
alias ipgrep="grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}'"

tidyperl()
{
  perltidy -gnu -i=2 $1
  mv $1.tdy $1
}

ipaddr()
{
  curl -s -o ipaddr -A "Windows NT" https://www.showmyip.com
  grep -E '>City|>Country|>Your IPv4|>Internet' ipaddr |\
  sed 's/<td>//g;s/<\/td>/ /g;s/<b>//g;s/<\/b>//g' |\
  lolcat -g 00FFFF:80FF00 -b
  # removes whitespace
  # sed 's/<td>//g;s/<\/td>/ /g;s/<b>//g;s/<\/b>//g' |\
  # sed 's/^[ \t]*//' | lolcat
  rm ipaddr
}

depsort()
{
	cat ~/Documents/to_install.txt | sort > ~/.dependency
	cat ~/.dependency > ~/Documents/to_install.txt
}

fynd()
{
  /usr/bin/find / -iname *$1* 2>/dev/null
}

wicon()
{
  doas ifconfig wlan0 ssid $1 up
  doas dhclient wlan0
}

docs()
{
	cd ~/Documents
}

scripts()
{
	cd ~/scripts
}

pics()
{
	cd ~/Pictures
}

stor()
{
	cd ~/Storage
}

downloads()
{
	cd ~/downloads
}

media()
{
        cd /media/
}

# PS1="\[\033$txtgrn\]\w --» \[\033[0m\]"
