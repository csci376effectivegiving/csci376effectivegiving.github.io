#!/bin/sh
cd md
for j in *.md; do
	pandoc --template=../pandoc.html -o "../../${j%.md}.html" "$j"
done
