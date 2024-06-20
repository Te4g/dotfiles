# Function to backup existing files
backup_file() {
    if [ -f "$1" ]; then
        mv "$1" "$1.bak"
    fi
}
