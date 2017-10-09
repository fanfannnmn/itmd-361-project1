#!/bin/sh

# Place this script under your project folder
echo "1: Install necessary packages"
echo "2: Initialize project folder"
echo "3: Check code"
echo "4: Check code and push to GitHub"

read -p "Selection: " decision

if [ $decision -eq 1 ] ; then
# Install necessary packages
npm install -g http-server htmllint-cli stylelint eslint jshint
brew install vnu
fi

if [ $decision -eq 2 ] ; then
# Initialize Git, htmllint, stylelint
git init
htmllint init
stylelint init
eslint --init
fi

if [ $decision -eq 3 ] ; then
# Show the system time
date

# Replace any linter configurations to official
# https://gist.github.com/559aac5112928c7c24c628c6305b70b8
rm .htmllintrc .eslintrc.json .eslintrc.json.with-comments .stylelintrc
wget https://gist.github.com/profstolley/559aac5112928c7c24c628c6305b70b8/raw/20d27aeb4fc9992fdf882880524d781fbfea9ac2/.eslintrc.json https://gist.github.com/profstolley/559aac5112928c7c24c628c6305b70b8/raw/20d27aeb4fc9992fdf882880524d781fbfea9ac2/.eslintrc.json.with-comments https://gist.github.com/profstolley/559aac5112928c7c24c628c6305b70b8/raw/20d27aeb4fc9992fdf882880524d781fbfea9ac2/.htmllintrc https://gist.github.com/profstolley/559aac5112928c7c24c628c6305b70b8/raw/20d27aeb4fc9992fdf882880524d781fbfea9ac2/.stylelintrc

# html validator
vnu *.html
vnu */*.html
echo "These files were checked"
ls *.html
ls */*.html
echo "HTML validator runs successfully"

# htmllint check
htmllint
echo "htmllint runs successfully"
echo

# stylelint check
stylelint "*.css"
echo "stylelint runs successfully"
echo

## css validator
echo "Run CSS Validation manually"
echo "https://jigsaw.w3.org/css-validator/#validate_by_input"

# eslint check

fi

if [ $decision -eq 4 ] ; then
# Show the system time
date

# html validator
vnu *.html
vnu */*.html
echo "These files were checked"
ls *.html
ls */*.html
echo "HTML validator runs successfully"

# htmllint check
htmllint
echo "htmllint runs successfully"
echo

# stylelint check
stylelint "*.css"
echo "stylelint runs successfully"
echo

## css validator
echo "Run CSS Validation manually"
echo "https://jigsaw.w3.org/css-validator/#validate_by_input"

# eslint check

# git hooks
read -p "If there is any error shows above, interrupt(Ctrl+C) the script." -n1 -s
read -p "Commit: " commit
git add .
git commit -m "$commit"
git push origin dev
fi
