. _variables.sh

backup_file() {
	if [ -f "$1" ]; then
		cp "$1" "$1.bak"
	fi
}

backup_sym_link() {
	if [ -L "$1" ]; then
		LINKED_FILE=$(readlink -f "$1")
		cp -L -f "$LINKED_FILE" "$1.bak"
	fi
}

create_sym_link() {
    local original_file=$1
    local symbolic_link=$2

    backup_sym_link "$symbolic_link"
    unlink "$symbolic_link"
    ln -s "$original_file" "$symbolic_link"
}

setup_phpswitch() {
	if [ ! -d "$PERSONAL_BINARIES_DIR" ]; then
		mkdir -p "$PERSONAL_BINARIES_DIR"
	fi

	ln -sf "$HOME/.dotfiles/phpswitch" "$PERSONAL_BINARIES_DIR/phpswitch"
}
