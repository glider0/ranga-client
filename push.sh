#!/bin/bash

if [ "$1" = "--delete-history" ]; then
	mv .git/config .
	rm -rf .git
	git init
	mv config .git/
	git add .
	git commit -m 'remove history'
	git push -f origin master
else
	git add .
	git commit -m 'update'
	git push origin master
fi
