.PHONY: upload server

upload:
	rsync -av --no-p --no-o -e ssh public/ embmx:public_html
	rsync -av --no-p --no-o -e ssh --exclude public --exclude .git ./ embmx:

server:
	cd public; nohup python -m SimpleHTTPServer &
	open http://localhost:8000
