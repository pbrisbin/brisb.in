SITE = _site
BUCKET = brisb.in

deploy:
	s3cmd \
	  --cf-invalidate \
	  --cf-invalidate-default-index \
	  sync $(SITE)/ s3://$(BUCKET)

.PHONY: deploy
