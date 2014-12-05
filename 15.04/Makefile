DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-distrib-ubuntu
VERSION =		vivid
VERSION_ALIASES =	15.04
TITLE =			Ubuntu Vivid
DESCRIPTION =		Ubuntu Vivid (15.04)
SOURCE_URL =		https://github.com/online-labs/image-ubuntu


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
