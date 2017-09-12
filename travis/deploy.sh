#!/bin/sh
set -e

cd out
echo "<!DOCTYPE html><html><head><title>Grigorii Sokolik CV</title><script type=\"text/javascript\">(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');ga('create', 'UA-59917151-2', 'auto');ga('send', 'pageview');</script><!-- Yandex.Metrika counter --><script type=\"text/javascript\"> (function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter44819923 = new Ya.Metrika({ id:44819923, clickmap:true, trackLinks:true, accurateTrackBounce:true, webvisor:true }); } catch(e) { } }); var n = d.getElementsByTagName(\"script\")[0], s = d.createElement(\"script\"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = \"text/javascript\"; s.async = true; s.src = \"https://mc.yandex.ru/metrika/watch.js\"; if (w.opera == \"[object Opera]\") { d.addEventListener(\"DOMContentLoaded\", f, false); } else { f(); } })(document, window, \"yandex_metrika_callbacks\"); </script> <noscript><div><img src=\"https://mc.yandex.ru/watch/44819923\" style=\"position:absolute; left:-9999px;\" alt=\"\" /></div></noscript><!-- /Yandex.Metrika counter --></head><body style=\"padding:0px;margin:0px;\"><embed src=\"cv.pdf\" style=\"hidth:100%;width:100%\" alt=\"pdf\" pluginspage=\"http://www.adobe.com/products/acrobat/readstep2.html\"><script type=\"text/javascript\">document.body.children[0].style.height=(window.innerHeight-4).toString()+\"px\";</script></body></html>" > index.html
git init

git config user.name "Travis CI"
git config user.email "g.sokol99@g-sokol.info"

git add .
git commit -m "Deploy to GitHub Pages"

git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1
