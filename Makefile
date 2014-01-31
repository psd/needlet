UGLIFY=./node_modules/uglify-js/bin/uglifyjs

all::	index.html

init::	dependencies

#
#  build documentation
#
index.html:	index.sh bookmarklet
	./index.sh bookmarklet > $@

#
#  build bookmarklets
#
bookmarklet:	bookmarklet.js Makefile
	( echo "javascript:\\c" ; cat bookmarklet.js | $(UGLIFY) ) > $@

#
#  dependencies
#  TBD: move to package.json
#
dependencies:
	npm install uglify-js

#
#  prune back to source code
#
clean::
	rm -f bookmarklet index.html
	rm -rf node_modules extensions
