SITE = _site
BUCKET = brisb.in

deploy:
	s3cmd sync $(SITE)/ s3://$(BUCKET)

.PHONY: deploy
