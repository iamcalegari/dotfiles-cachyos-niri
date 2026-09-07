source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

starship init fish | source 	# Tema

zoxide init fish | source	# Zoxide

set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/gcr/ssh"	# Valent

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
