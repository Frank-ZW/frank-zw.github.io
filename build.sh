#!/usr/bin/env bash
set -e

# Install quarto
wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.9.37/quarto-1.9.37-linux-amd64.deb
sudo dpkg -i quarto-1.9.37-linux-amd64.deb

# Render site
quarto render