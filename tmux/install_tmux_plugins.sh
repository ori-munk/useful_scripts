function add_plugin() {
	sed -i "\$iset -g @plugin \'$1\'" /tmp/b
}


# Install TPM #
test -d ~/.tmux/plugins/tpm || mkdir -p ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "run '~/.tmux/plugins/tpm/tpm'" >> ~/.tmux.conf

#Install plugins
add_plugin tmux-plugins/tpm
add_plugin tmux-plugins/tmux-logging
