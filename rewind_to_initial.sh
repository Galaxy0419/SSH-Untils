#!/bin/bash
rm -rf ./.git
git init
git add .
git commit -a -m 'Initial Commit'
git remote add ssh-utils git@github.com:Galaxy0419/SSH-Untils.git
