# Vim Setup
My Vim configuration.

![Example](/assets/image.png "Vim Example")
### Plug-in used
- **NERDTree** : used for moving between files thanks to a sidebar similar to VSCode.
- **fzf**: used for searcing between files and within files.
- **gruvbox**: theme for better UI.

## Configuration  
Copy the content of the `vimrc` file in your `.vimrc` file in the home directory (create the file if missing). Use command `cp` for a fast copy:
```
cp vimrc ~/.vimrc
```

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

# Shortcut for VIM
## General Keybindings Cheat Sheet

| Key | Action | Notes |
|-----|--------|-------|
| `<C-s>` | Save file | Write changes to disk |
| `<C-w>` | Quit Vim | Close the current Vim session |
| `<C-z>` | undo | Revert the last change |
| `<C-y>` | redo | Reapply the last undone change |

## NERDTree Keybindings Cheat Sheet

| Key | Action | Notes |
|-----|--------|-------|
| `<C-b>` | Toggle file sidebar | Open/close NERDTree |
| `o` (on file) | Open file | Opens in the current window |
| `t` (on file) | Open in new tab | Creates a new tab with the file |
| `i` (on file) | Open in vertical split | Opens file in vertical split |
| `s` (on file) | Open in horizontal split | Opens file in horizontal split |
| `o` (on folder) | Expand/Collapse folder | Shows or hides folder content |
| `O` (on folder) | Expand all recursively | Opens all subfolders and files recursively |
| `x` (on folder) | Close folder | Closes the folder without collapsing children |

## fzf.vim Keybindings Cheat Sheet

| Key | Command | Description |
|-----|---------|-------------|
| `<C-p>` | `:Files` | Open fuzzy finder to search and open files in the project |
| `<C-u>` | `:Buffers` | Search and switch between open buffers |
| `<C-l>` | `:Lines` | Search for lines in the current file |
| `<C-f>` | `:Rg` | Fuzzy search text in the entire project using ripgrep |
