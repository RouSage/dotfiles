#!/bin/bash

echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing chezmoi"
brew install chezmoi

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing go tools..."
echo "Installing gopls"
go install golang.org/x/tools/gopls@latest
echo "Installing air"
go install github.com/air-verse/air@latest

echo "Installing Node.js tools..."
echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
echo "Installing LTS Node.js version"
nvm install --lts
echo "Installing sql-formatter"
npm install -g sql-formatter
