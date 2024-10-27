#!/bin/bash
set -e
source ~/dotfiles/scripts/script-funcs.sh

### install softwares
yay -S --needed repgrep fzf fd tmux vim \
  alacritty lazygit git-delta eza \
  bat gping tldr \
  ttf-jetbrains-mono-nerd nerd-fonts-sf-mono
# go nvm nodejs


### Xorg #########################
__current_status "linking Xorg"
__link_file ~/dotfiles/.xprofile ~/.xprofile

### fontconfig #########################
__current_status "linking fontconfig"
__link_file ~/dotfiles/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf

### dotfiles #########################
__current_status "linking dotfiles"
dotfiles=(.ctags .bashrc .zshrc .gitconfig)
for file in ${dotfiles[@]}; do
    __current_status "linking ${file}"
    __link_file ~/dotfiles/$file ~/$file
done

### alacritty #########################
__current_status "linking alacritty"
__link_file ~/dotfiles/alacritty-linux.toml ~/.config/alacritty/alacritty.toml

### vim #########################
__current_status "linking vim"
__link_file ~/dotfiles/vim/.vimrc ~/.vimrc
__link_file ~/dotfiles/vim/colors ~/.vim/colors

### neovim #########################
__current_status "linking neovim"
__link_file ~/dotfiles/nvim ~/.config/nvim
## neovim mason lazy sync

### lazygit #########################
__current_status "linking lazygit"
__link_file ~/dotfiles/lazygit.yml ~/.config/lazygit/config.yml

__current_status "successfully install 🚀"


##########################################

## rime, tmux, i3wm, ranger


##### zsh
# 1. ohmyz.sh, install oh-my-zsh
# 2. git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# 3. git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# 4. git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# 5. git clone --depth=1 https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/you-should-use
#
# 1. cat /etc/shells, chsh -l
# 2. yay -S zsh 
# 3. chsh -s /usr/bin/zsh, then logout
