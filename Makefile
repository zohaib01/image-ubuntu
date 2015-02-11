VERSIONS ?=	14.04 14.10 15.04


all:	build


.PHONY: build release install install_on_disk publish_on_s3 clean shell re all run
.PHONY: publish_on_s3.tar publish_on_s3.sqsh publish_on_s3.tar.gz


build release install install_on_disk publish_on_s3 clean shell re all run publish_on_s3.tar publish_on_s3.sqsh publish_on_s3.tar.gz:
	for version in $(VERSIONS); do \
	    $(MAKE) -C $$version $@; \
	done

docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
