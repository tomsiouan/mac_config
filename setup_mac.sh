#!/bin/bash
set -e

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update && brew upgrade

# ZSH
brew install zsh
# OMZ
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install && Configure Visual Studio Code
brew install --cask visual-studio-code

# TODO: Activer le raccourci code pour vscode
# Use Visual Studio Code in Git editor
#git config --global core.editor "code --wait"

# Install && Configure Git
brew install git

# https://sebastiandedeyne.com/setting-up-a-global-gitignore-file/
cat <<EOT > ~/.gitignore
# Ignorer les fichiers temporaires
*.tmp
*.log

# Ignorer les dossiers spécifiques
build/
dist/
node_modules/

# Ignorer les fichiers de configuration utilisateur
*.env
.idea/
.vscode/

# File system
.DS_Store
EOT

# Install Direnv : https://direnv.net
brew install direnv # Automaticaly export variables when a .envrc file is created in a directory
plugins=(... direnv)