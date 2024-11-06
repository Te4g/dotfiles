# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export CLICOLOR=1
export HOMEBREW_NO_AUTO_UPDATE=1

###> Prompt related ###
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure
###< Prompt related ###

###> HISTORY ###
HISTSIZE=9999999
SAVEHIST=9999999
HISTFILE=~/.zsh_history
HISTTIMEFORMAT="[%F %T] "

setopt INC_APPEND_HISTORY_TIME   # Write to the history file immediately, not when the shell exits.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_IGNORE_ALL_DUPS      # Don't record an entry that was already recorded.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_FIND_NO_DUPS         # Do not display a duplicate entry.
###< HISTORY ###

###> ZSH EXTENSIONS ###
# Check and source zsh-autosuggestions if it exists
if [ -f "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
  source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi

# Check and source zsh-syntax-highlighting if it exists
if [ -f "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
  source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi
###< ZSH EXTENSIONS ###

###> NVM ###
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && \. "/usr/local/opt/nvm/etc/bash_completion"
###< NVM ###

for file in ~/.dotfiles/.shell_*; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
