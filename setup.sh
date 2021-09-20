# Move all files to home
cp -r  vim/ ~/.vim
cp tmux/.tmux_conf ~/.tmux_conf
cp zsh/.zshrc ~/.zshrc
tmux source-file ~/.tmux.conf
git config --global core.excludesfile '~/.gitignore_global'

mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
cp xcode.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
