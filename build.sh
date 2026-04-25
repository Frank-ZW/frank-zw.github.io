#!/usr/bin/env bash
set -e

QUARTO_VERSION=1.9.37
QUARTO_DIR=/tmp/quarto-${QUARTO_VERSION}
FILES_BASE_URL=https://pub-f7acf1ba602e433f9a8bd0e03679fb8c.r2.dev

# Install quarto
wget -q https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz -O /tmp/quarto.tar.gz
tar -xzf /tmp/quarto.tar.gz -C /tmp

# Run render command in Quarto folder
export PATH=${QUARTO_DIR}/bin:$PATH

find . -name "*.qmd" -type f -exec sed -i "s|@FILES_BASE_URL@|${FILES_BASE_URL}|g" {} +

quarto render .