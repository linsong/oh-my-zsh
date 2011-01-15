## fixme, i duplicated this in xterms - oops
#function title {
  #if [[ $TERM == "screen" ]]; then
    ## Use these two for GNU Screen:
    #print -nR $'\033k'$1$'\033'\\\

    #print -nR $'\033]0;'$2$'\a'
  #elif [[ ($TERM =~ "^xterm") ]] || [[ ($TERM == "rxvt") ]]; then
    ## Use this one instead for XTerms:
    #print -nR $'\033]0;'$*$'\a'
  #fi
#}

function precmd {
  title zsh "$PWD"
}

function preexec {
  emulate -L zsh
  local -a cmd; cmd=(${(z)1})
  title $cmd[1]:t "$cmd[2,-1]"
}

function zsh_stats() {
  history | awk '{print $2}' | sort | uniq -c | sort -rn | head
}

function uninstall_oh_my_zsh() {
  /bin/sh $ZSH/tools/uninstall.sh
}

function upgrade_oh_my_zsh() {
  /bin/sh $ZSH/tools/upgrade.sh
}

function take() {
  mkdir -p $1
  cd $1
}

function extract() {
    unset REMOVE_ARCHIVE
    
    if test "$1" = "-r"; then
        REMOVE=1
        shift
    fi
  if [[ -f $1 ]]; then
    case $1 in
      *.tar.bz2) tar xvjf $1;;
      *.tar.gz) tar xvzf $1;;
      *.tar.xz) tar xvJf $1;;
      *.tar.lzma) tar --lzma -xvf $1;;
      *.bz2) bunzip $1;;
      *.rar) unrar $1;;
      *.gz) gunzip $1;;
      *.tar) tar xvf $1;;
      *.tbz2) tar xvjf $1;;
      *.tgz) tar xvzf $1;;
      *.zip) unzip $1;;
      *.Z) uncompress $1;;
      *.7z) 7z x $1;;
      *) echo "'$1' cannot be extracted via >extract<";;
    esac

    if [[ $REMOVE_ARCHIVE -eq 1 ]]; then
        echo removing "$1";
        /bin/rm "$1";
    fi

  else
    echo "'$1' is not a valid file"
  fi
}

###########################################
# following is my own functions 
###########################################

function g()
{ 
  #growlnotify -s --image ~/Desktop/mylogo.png -n 'ShellNotification' -m "$*" 'Notification' 2>/dev/null; 
  growlnotify -s -n 'ShellNotification' -m "$*" 'Notification' 2>/dev/null; 
}

function v()
{
  /usr/bin/env vim -u $HOME/.vim_simple_rc -U NONE --noplugin --cmd ":setlocal buftype=nofile" "${@:--}"
}

function ips {
  ifconfig | grep "inet " | awk '{ print $2 }'
}

function myip {
  #curl -s ip.appspot.com

  curl ifconfig.me

  #res=$(curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+')
  #echo "Your public IP is: ${bold_green} $res ${normal}"
}

function rt()
{
 # shortcut to start rails test
 if [ $* ]; then 
   ruby -Itest $*
   #case $* in 
     #*/unit/*) rake test:units TEST=$* ;;
     #*/functional/*) rake test:functionals TEST=$* ;;
     #*/integration/*) rake test:integration TEST=$* ;;
     #*) echo -n "this test is not supported" ;;
    #esac
 else
   rake 
 fi
}

function ding()
{
   # to use gnome-osd-client, you need to install package gnome-osd 
   # view manpage for gnome-osd-client for the format of notification message
   # gnome-osd provide a python binding also, not have a look yet.
   if [ -n "$(which gnome-osd-client)" ]; then
       gnome-osd-client -f "<message id='ding' osd_fake_translucent_bg='on' osd_vposition='center' animations='on' hide_timeout='10000' osd_halignment='right'>$*</message>"
   fi
}

function netlist()
{
   if [ ! `uname -s` = 'Cygwin' ];then
      sudo netstat -nlptu | /usr/bin/perl -ape 'if(@F[-1] =~ m#^(\d+)/.+$#){ open CMDLINE, "/proc/$1/cmdline" ; $cmdline = <CMDLINE>; $last_field = $1."#".$cmdline; s#\d+/.+$#$last_field# }'
   fi
}
