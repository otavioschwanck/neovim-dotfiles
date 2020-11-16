This project is WIP

* Installation (Ubuntu)

```
sudo apt install silversearcher-ag nodejs npm neovim neovim-qt xclip python3-pip ripgrep
gem install solargraph
pip3 install --user pynvim
git clone https://github.com/otavioschwanck/neovim-dotfiles.git ~/.config/nvim/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim-qt +PlugInstall
```
