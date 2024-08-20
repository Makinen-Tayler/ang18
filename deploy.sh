#!/bin/bash

# Build the Angular project
ng build --base-href /letscode/

# Change directory to the dist/browser
cd docs/browser

# Initialize a new Git repository
git init

# Add the remote repository
git remote add origin https://github.com/Makinen-Tayler/letscode.git

# Add all files to the new repository
git add .

# Commit the files
git commit -m "Deploy Angular build"

# Force push to the remote repository
git push --force origin master

# Return to the project root
cd ../../..
