.PHONY: make-dirs normalize all clean twemoji

all: clean make-dirs normalize twemoji

make-dirs:
	mkdir -p assets/css/vendor
	mkdir -p assets/js/vendor

normalize:
	wget https://necolas.github.io/normalize.css/8.0.1/normalize.css -O assets/css/vendor/normalize.css

twemoji:
	wget https://twemoji.maxcdn.com/v/latest/twemoji.min.js -O assets/js/vendor/twemoji.min.js

clean:
	rm -rf assets/css/vendor
	rm -rf assets/js/vendor

build:
	hugo --minify

watch:
	hugo server --watch --minify

watch-drafts:
	hugo server --watch --minify --buildDrafts

watch-future:
	hugo server --watch --minify --buildFuture

watch-all:
	hugo server --watch --minify --buildDrafts --buildFuture
