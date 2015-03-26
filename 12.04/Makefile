DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-distrib-ubuntu
VERSION =		precise
VERSION_ALIASES =	12.04.5 12.04
TITLE =			Ubuntu Precise
DESCRIPTION =		Ubuntu Precise (12.04 LTS)
SOURCE_URL =		https://github.com/online-labs/image-ubuntu


## Image tools  (https://github.com/online-labs/image-tools)
all:	../docker-rules.mk
../docker-rules.mk:
	$(MAKE) -C .. docker-rules.mk
-include ../docker-rules.mk
## Below you can add custom makefile commands and overrides
