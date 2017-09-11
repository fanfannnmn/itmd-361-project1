#!/bin/sh

# Show the system time
date

# Check by HTML5 validator
vnu *.html
vnu */*.html
echo "These files were checked"
ls *.html
ls */*.html
echo "HTML5 validator runs successfully"

# Check by Linter configurations for Stolley's classes (ITMD 361, COM 330/530)
htmllint
echo "htmllint runs successfully"
echo

# Not yet
#stylelint "*.css"
#stylelint "*/*.css"
#echo "stylelint runs successfully"
#echo

#eslint . --ext .js
#eslint */* --ext .js
#echo "eslint runs successfully"
#echo

# Git hooks
echo "If there is any error shows above, interrupt(Ctrl+C) the script ."
git add .
git diff
read -p "Commit: " commit
git commit -m "$commit"
git push
