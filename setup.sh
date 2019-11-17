# Move all files to home
mv  -v ./* ~/

tmux source-file ~/.tmux.conf
git config --global core.excludesfile '~/.gitignore_global'

mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
cp xcode.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/

