#!/bin/bash

## Rebuild the book an force push to gh-pages branch

rm -rf book

aklat build

cd book

git init

git config user.name "Jovansonlee Cesar"
git config user.email "ivanceras@gmail.com"

git add .

git commit -m "Updating docs"

git remote add origin git@github.com:ivanceras/spongedown.git

git branch gh-pages

git checkout gh-pages

git push --force origin gh-pages

