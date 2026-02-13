#!/bin/bash

ln -s .deps/bud/.gemini .gemini

echo "Installation complete. Symlink created from .deps/bud/.gemini to .gemini"

# add .gemini to .gitignore if not already present
if ! grep -q "^.gemini$" .gitignore; then
    echo ".gemini" >> .gitignore
    echo ".gemini added to .gitignore"
else
    echo ".gemini already present in .gitignore"
fi