#!/bin/bash

sudo apt install vim zsh curl flatpak autojump fzf
sudo apt autoremove

sudo snap install code --classic
ln -sf ~/Code/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
ln -sf ~/Code/dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --noninteractive --or-update flathub com.spotify.Client com.valvesoftware.Steam us.zoom.Zoom com.discordapp.Discord com.slack.Slack 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
rm -f ~/.zshrc
ln -sf ~/Code/dotfiles/.zshrc ~/.zshrc
ln -sf ~/Code/dotfiles/.env ~/.env


