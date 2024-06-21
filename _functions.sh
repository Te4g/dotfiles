PERSONAL_BINARIES_DIR="$HOME/.local/bin"

backup_file() {
	if [ -f "$1" ]; then
		mv "$1" "$1.bak"
	fi
}

setup_phpswitch() {
	if [ ! -d "$PERSONAL_BINARIES_DIR" ]; then
		mkdir -p "$PERSONAL_BINARIES_DIR"
	fi

	ln -s "$HOME/.dotfiles/.phpswitch" "$PERSONAL_BINARIES_DIR/phpswitch"
}
