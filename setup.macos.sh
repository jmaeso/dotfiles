# bash configs
ln -s ~/Code/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/Code/dotfiles/.bash_custom ~/.bash_custom
ln -s ~/Code/dotfiles/.env ~/.env
ln -s ~/Code/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/Code/dotfiles/.gitignore_global ~/.gitignore_global

# 3rd party configs
ln -s ~/Code/dotfiles/.aws ~/.aws
ln -s ~/Code/dotfiles/.docker ~/.docker
ln -s ~/Code/dotfiles/.kube ~/.kube

# vim config
ln -s ~/Code/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/Code/dotfiles/vim/colors ~/.vim/colors

# vs code config
ln -s ~/Code/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/Code/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

# for the record
# git branch autocompletion - brew install bash-completion
