DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-distrib-ubuntu
VERSION =		utopic
VERSION_ALIASES =	14.10 latest
TITLE =			Ubuntu Utopic
DESCRIPTION =		Ubuntu Utopic (14.10)
SOURCE_URL =		https://github.com/online-labs/image-ubuntu


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
