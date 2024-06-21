. _variables.sh

backup_file() {
	if [ -f "$1" ]; then
		cp "$1" "$1.bak"
	fi
}

setup_phpswitch() {
	if [ ! -d "$PERSONAL_BINARIES_DIR" ]; then
		mkdir -p "$PERSONAL_BINARIES_DIR"
	fi

	ln -s "$HOME/.dotfiles/phpswitch" "$PERSONAL_BINARIES_DIR/phpswitch"
}
