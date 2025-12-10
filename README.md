# Vim Setup
My Vim configuration.

### Plug-in used
- **NERDTree** : used for moving between files thanks to a sidebar similar to VSCode.
- **fzf**: used for searcing between files and within files.
- **gruvbox**: theme for better UI.

## Configuration  
Copy the content of the `vimrc` file in your `.vimrc` file in the home directory (create the file if missing). 

### 1. Install *vim-plug*
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
### 2. Install fzf
On you local machine install it with:
```
sudo apt install fzf
```
If you do not have admin permission, install manually by:
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all --no-bash --no-fish
```
Then set the path variable:
```
echo 'export PATH="$HOME/.fzf/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```
---
Check if everthing is running with
```
~/.fzf/bin/fzf --version
```
### 3. Install the packages
Open the `.vimrc` file using and run
```
:PlugInstall
```
