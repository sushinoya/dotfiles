# Move all files to home
mv  vim/.vimrc ~/.vimrc
mv -r  vim/colors ~/.vim/colors
mv tmux/.tmux_conf ~/.tmux_conf
tmux source-file ~/.tmux.conf
git config --global core.excludesfile '~/.gitignore_global'

mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
cp xcode.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
