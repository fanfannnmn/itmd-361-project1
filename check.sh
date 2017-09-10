#!/bin/sh

# Check by HTML5 validator
vnu *.html

# Check by Linter configurations for Stolley's classes (ITMD 361, COM 330/530)
htmllint
