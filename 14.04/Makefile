DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-distrib-ubuntu
VERSION =		trusty
VERSION_ALIASES =	14.04.1 14.04
IS_LATEST =		0
TITLE =			Ubuntu Trusty
DESCRIPTION =		Ubuntu Trusty (14.04 LTS)
SOURCE_URL =		https://github.com/online-labs/image-ubuntu/tree/master/14.04


## Image tools
all:	docker-rules.mk
docker-rules.mk:
	wget https://raw.githubusercontent.com/online-labs/image-tools/master/docker-rules.mk
-include ../docker-rules.mk


## Here you can add custom commands and overrides
