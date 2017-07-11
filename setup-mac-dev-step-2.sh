#!/bin/zsh

# Install NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node

# Install Brew Packages
brew install mongodb vim

# Install Cask Packages
brew cask install angry-ip-scanner atom boostnote brave chromium cyberduck day-o devdocs firefox flux gimp google-chrome mysqlworkbench ngrok postman robomongo sketch slack stremio sts transmission virtualbox visual-studio-code vlc whatsapp zeplin

# Add Node Modules to Path
echo '
PATH="./node_modules/.bin:$PATH"' >> ~/.zshrc

# Change Robby Russell to include full path
ZSH_THEME=~/.oh-my-zsh/themes/ollyrussell.zsh-theme

cp ~/.oh-my-zsh/themes/robbyrussell.zsh-theme $ZSH_THEME
find $ZSH_THEME -type f -exec sed -i '' -e 's|%c%|%~%|g' {} \;
find ~/.zshrc -type f -exec sed -i '' -e 's|ZSH_THEME="robbyrussell"|ZSH_THEME="ollyrussell"|g' {} \;
