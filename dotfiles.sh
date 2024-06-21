#!/bin/sh

. "$HOME/.dotfiles/_functions.sh"

is_shell_supported=0
for shell in $SUPPORTED_SHELLS; do
    if [ "$shell" = "$CURRENT_SHELL" ]; then
        is_shell_supported=1
        break
    fi
done

if [ $is_shell_supported -eq 0 ]; then
    echo "Unsupported shell: $CURRENT_SHELL"
    exit 1
fi

backup_sym_link "$HOME/.${CURRENT_SHELL}rc"
ln -s "$HOME/.dotfiles/.${CURRENT_SHELL}rc" "$HOME/.${CURRENT_SHELL}rc"

backup_sym_link "$HOME/.gitconfig"
ln -s "$HOME/.dotfiles/.gitconfig" "$HOME/.gitconfig"

backup_sym_link "$HOME/.gitignore"
ln -s "$HOME/.dotfiles/.gitignore" "$HOME/.gitignore"
