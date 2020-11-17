# Installation

## Requirements
- Nodejs
- Ag
- npm
- ruby
- solargraph
- neovim
- neovim-qt (optional)
- python3-pip

### Ubuntu

```
sudo apt install silversearcher-ag nodejs npm neovim neovim-qt xclip python3-pip ripgrep
gem install solargraph neovim
pip3 install --user pynvim
git clone https://github.com/otavioschwanck/neovim-dotfiles.git ~/.config/nvim/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim-qt +PlugInstall
```

# Troubleshoot

## the icons are ugly

Just go to `~/.config/share/fonts` and install NerdIcon fonts with:
```
curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

I recommend you to deleted old nerd icocns first.
