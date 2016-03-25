#!/bin/sh
set -e

cd out
echo '<!DOCTYPE html><html><head><title>Grigorii Sokolik CV</title></head><body style="padding:0px;margin:0px;"><embed src="cv.pdf" style="hidth:100%;width:100%" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html"><script type="text/javascript">document.body.children[0].style.height=(window.innerHeight-4).toString()+"px";</script></body></html>' > index.html
git init

git config user.name "Travis CI"
git config user.email "g.sokol99@g-sokol.info"

git add .
git commit -m "Deploy to GitHub Pages"

git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1
