#!/bin/sh

# Please place this script under your project folder

# Initialize Git and htmllint
git init
htmllint init
stylelint init

# Linter configurations for Stolley's classes (ITMD 361, COM 330/530)
# https://gist.github.com/559aac5112928c7c24c628c6305b70b8
rm .htmllintrc .eslintrc.json .eslintrc.json.with-comments .stylelintrc
wget https://gist.github.com/profstolley/559aac5112928c7c24c628c6305b70b8/raw/f2c974bc495af93d86ebf0e93831e469ef218ba8/.eslintrc.json https://gist.github.com/profstolley/559aac5112928c7c24c628c6305b70b8/raw/f2c974bc495af93d86ebf0e93831e469ef218ba8/.eslintrc.json.with-comments https://gist.github.com/profstolley/559aac5112928c7c24c628c6305b70b8/raw/f2c974bc495af93d86ebf0e93831e469ef218ba8/.htmllintrc https://gist.github.com/profstolley/559aac5112928c7c24c628c6305b70b8/raw/f2c974bc495af93d86ebf0e93831e469ef218ba8/.stylelintrc
ls -hl
