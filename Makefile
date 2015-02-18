upload:
	rsync -av --no-p --no-o -e ssh public/ embmx:public_html
	rsync -av --no-p --no-o -e ssh --exclude public --exclude .git ./ embmx: