#!/bin/sh

# Check by HTML5 validator
date
vnu *.html
vnu */*.html
ls *.html
ls */*.html
echo "HTML5 validator runs successfully"

# Check by Linter configurations for Stolley's classes (ITMD 361, COM 330/530)
htmllint
echo "htmllint runs successfully"
