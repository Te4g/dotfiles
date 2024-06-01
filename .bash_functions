# Extract most know archives with one command
extract()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' can not be extract by ex()" ;;
    esac
  else
    echo "'$1' invalid file"
  fi
}

# Create a directory and change to it
mkcd(){
    mkdir $1 && cd $1
}

# Create a directory and touch a file in one command
mktouch() { mkdir -p $(dirname $1) && touch $1; }

# Perform "ls" after "cd" if successful
cdls() {
  builtin cd "$*"
  RESULT=$?
  if [ "$RESULT" -eq 0 ]; then
    ls
  fi
}
alias cd=cdls

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
function _ssh_reload_autocomplete() {
	[ -e "~/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh
}
_ssh_reload_autocomplete

###> NGTV related ###
ssh-pedro() {
	if [ -z "$1" ]; then
		echo "Sport center reference is required"
	else
		ssh -o 'StrictHostKeyChecking no' -o "Port=$((46000+$1))" -L 30098:localhost:8998 -L 30080:localhost:8000 -L 9002:localhost:5900 pedro
	fi
}
alias pedro="ssh-pedro"

getList() {
	ssh pedrolito /home/ubuntu/getSportCenters.sh
}
alias list="getList"
###< NGTV related ###
