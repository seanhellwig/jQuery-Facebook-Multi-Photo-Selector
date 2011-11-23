all: build/jquery.facebook.multiphoto.select.min.js build/jquery.facebook.multiphoto.select.min.css

build/jquery.facebook.multiphoto.select.min.js: src/js/jquery.facebook.multiphoto.select.js
	curl --data-urlencode js_code@src/js/jquery.facebook.multiphoto.select.js  --data compilation_level=SIMPLE_OPTIMIZATIONS --data output_info=compiled_code --data output_format=text http://closure-compiler.appspot.com/compile > build/jquery.facebook.multiphoto.select.min.js

build/jquery.facebook.multiphoto.select.min.css: src/css/jquery.facebook.multiphoto.select.css
	curl -L -F compressfile[]=@src/css/jquery.facebook.multiphoto.select.css -F type=CSS -F redirect=on http://refresh-sf.com/yui/ > build/jquery.facebook.multiphoto.select.min.css
