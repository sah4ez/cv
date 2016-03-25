#!/bin/sh
set -e

cd out
git init

git config user.name "Travis CI"
git config user.email "g.sokol99@g-sokol.info"

git add .
git commit -m "Deploy to GitHub Pages"

git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1
