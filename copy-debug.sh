#!/bin/bash

# Create the destination directory
mkdir -p debug-toall

# Copy all TypeScript files from src directory (flattened)
find src -type f \( -name "*.ts" -o -name "*.tsx" \) -exec cp {} debug-toall/ \;

# Copy config files
cp electron.tsconfig.json debug-toall/
cp tsconfig.json debug-toall/
cp vite.config.ts debug-toall/

echo "Files have been copied to debug-toall directory"