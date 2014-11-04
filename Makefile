# Securepoint makefile for generating minified files with jsmin.c
# Makefile for generating minified files

.PHONY: all

all: 
	cc jsmin.c -o jsmin.out

	echo -e "/*\nJavascript plotting library for jQuery, version 0.8.3.\nCopyright (c) 2007-2014 IOLA and Ole Laursen.\nLicensed under the MIT license.\n*/" > flot.0.8.3.minified.js
	cat jquery.flot.js | ./jsmin.out >> flot.0.8.3.minified.js
	cat jquery.flot.canvas.js | ./jsmin.out >> flot.0.8.3.minified.js
	cat jquery.flot.categories.js | ./jsmin.out >> flot.0.8.3.minified.js
	cat jquery.flot.crosshair.js | ./jsmin.out >> flot.0.8.3.minified.js
	cat jquery.flot.errorbars.js | ./jsmin.out >> flot.0.8.3.minified.js
	cat jquery.flot.fillbetween.js | ./jsmin.out >> flot.0.8.3.minified.js
	cat jquery.flot.image.js | ./jsmin.out >> flot.0.8.3.minified.js
	cat jquery.flot.navigate.js | ./jsmin.out >> flot.0.8.3.minified.js
	cat jquery.flot.pie.js | ./jsmin.out >> flot.0.8.3.minified.js
	cat jquery.flot.resize.js | ./jsmin.out >> flot.0.8.3.minified.js
	cat jquery.flot.selection.js | ./jsmin.out >> flot.0.8.3.minified.js
	cat jquery.flot.stack.js | ./jsmin.out >> flot.0.8.3.minified.js
	cat jquery.flot.symbol.js | ./jsmin.out >> flot.0.8.3.minified.js
	cat jquery.flot.threshold.js | ./jsmin.out >> flot.0.8.3.minified.js
	cat jquery.flot.time.js | ./jsmin.out >> flot.0.8.3.minified.js

	echo -e "\n\n/*\nexcanvas.js, copyright 2006 Google Inc.\n\nLicensed under the Apache License, Version 2.0 (the "License");\nYou may not use this file except in compliance with the License.\nYou may obtain a copy of the License at\n\nhttp://www.apache.org/licenses/LICENSE-2.0\n*/" >> flot.0.8.3.minified.js
	cat excanvas.js | ./jsmin.out >> flot.0.8.3.minified.js

	echo -e "\n\n/*\njquery.colorhelpers.js, plugin for jQuery for working with colors.\nVersion 1.1.\nReleased under the MIT license by Ole Laursen, October 2009.\n*/" >> flot.0.8.3.minified.js	
	cat jquery.colorhelpers.js | ./jsmin.out >> flot.0.8.3.minified.js

	rm -rf jsmin.out

test:
	./node_modules/.bin/jshint *jquery.flot.js
