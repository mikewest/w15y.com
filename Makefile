staging:
	@jekyll
	@rsync -aHvP --exclude '.DS_Store' --delete ./_site/ linode:/home/mkwst/public_html/w15y.com/staging
