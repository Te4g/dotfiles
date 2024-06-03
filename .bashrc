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

# If possible, add tab completion for many commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

for file in ~/.dotfiles/.bash_*; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

