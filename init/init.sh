#!/bin/sh

# Please install nodejs first at https://nodejs.org/en/download/

# Install necessary packages
npm install vnu-jar
npm install -g htmllint-cli

# Initialize Git and htmllint
git init
htmllint init

# Linter configurations for Stolley's classes (ITMD 361, COM 330/530) 
rm .htmllintrc
git clone https://gist.github.com/559aac5112928c7c24c628c6305b70b8.git
cd 559aac5112928c7c24c628c6305b70b8
cp .eslintrc.json ../
cp .eslintrc.json.with-comments ../
cp .stylelintrc ../
cp .htmllintrc ../
cd ..
