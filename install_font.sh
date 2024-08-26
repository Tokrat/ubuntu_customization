#!/bin/bash

# Set variables
FONT_NAME="Poppins"
FONT_URL="https://github.com/itfoundry/Poppins/archive/refs/heads/master.zip"
TEMP_DIR=$(mktemp -d)
FONT_DIR="$HOME/.local/share/fonts"

# Create font directory if it doesn't exist
mkdir -p "$FONT_DIR"

# Download the font
echo "Downloading $FONT_NAME..."
curl -L "$FONT_URL" -o "$TEMP_DIR/$FONT_NAME.zip"

# Unzip the font files
echo "Extracting font files..."
unzip -q "$TEMP_DIR/$FONT_NAME.zip" -d "$TEMP_DIR"

# Move font files to the font directory
echo "Installing font files..."
find "$TEMP_DIR/Poppins-master/products/Poppins-4.003-GoogleFonts-TTF" -name "*.ttf" -exec mv {} "$FONT_DIR" \;

# Update font cache
echo "Updating font cache..."
fc-cache -f

# Clean up temporary files
echo "Cleaning up..."
rm -rf "$TEMP_DIR"

echo "$FONT_NAME has been successfully installed!"