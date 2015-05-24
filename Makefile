build:
	coffee -cs < ./src/index.coffee | tee ./chrome/index.js > ./firefox/data/index.js
	stylus < ./src/index.styl | tee ./chrome/index.css > ./firefox/data/index.css
