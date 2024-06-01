# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# Append to the history file, don't overwrite it
shopt -s histappend
# Save all lines of a multiple-line command in the same history entry (allows easy re-editing of multi-line commands)
shopt -s cmdhist
# Do not autocomplete when accidentally pressing Tab on an empty line. (It takes forever and yields "Display all 15 gazillion possibilites?")
shopt -s no_empty_cmd_completion

###### BASH HISTORY ######
HISTCONTROL=ignoreboth
HISTSIZE=2000
HISTFILESIZE=4000
HISTTIMEFORMAT="%F %T "
###### BASH HISTORY ######

###### PROMPT ######
PS1="\[\e[0;37m\]#\#\[\e[0;m\] \[\e[0;36m\][\t]\[\e[0;m\] \[\e[0;32m\]\u@\h\[\e[0;m\]: \[\e[1;34m\]\w\[\e[0;m\] \[\e[0;35m\] \n\\$\[\e[0;m\] "
###### PROMPT ######


# If possible, add tab completion for many commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

