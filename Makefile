serve:
	bundle exec jekyll serve -t -l

build:
	bundle exec jekyll build
	cp _site/404/index.html _site/404.html

test: build
	bundle exec htmlproofer --check-html --internal-domain "mrcn.ski","www.mrcn.ski" ./_site --file_ignore "/_site/files/"
