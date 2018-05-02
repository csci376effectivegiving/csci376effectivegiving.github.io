#!/bin/sh
cd md
for j in *.md; do
	pandoc --template=../pandoc.html -t html5 -o "../../${j%.md}.html" "$j"
	~/Sandbox/node_modules/js-beautify/js/bin/html-beautify.js -tr "../../${j%.md}.html"
done
