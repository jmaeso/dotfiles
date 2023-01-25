# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

# brew install fzf
$(brew --prefix)/opt/fzf/install # To install useful key bindings and fuzzy completion:
brew install autojump
brew install golangci-lint

brew install --cask google-chrome
brew install --cask slack
brew install --cask spotify
brew install --cask visual-studio-code
brew install --cask postman
brew install --cask iterm2
brew install --cask docker

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# basic configs
ln -s ~/Code/dotfiles/.zshrc ~/.zshrc
ln -s ~/Code/dotfiles/.env ~/.env
ln -s ~/Code/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/Code/dotfiles/.gitignore_global ~/.gitignore_global

# vim config
ln -s ~/Code/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/Code/dotfiles/vim/colors ~/.vim/colors

# vs code config
ln -s ~/Code/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/Code/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
