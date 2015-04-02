DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-distrib-ubuntu
VERSION =		utopic
VERSION_ALIASES =	14.10 latest
TITLE =			Ubuntu Utopic
DESCRIPTION =		Ubuntu Utopic (14.10)
SOURCE_URL =		https://github.com/scaleway/image-ubuntu


## Image tools  (https://github.com/scaleway/image-tools)
all:	../docker-rules.mk
../docker-rules.mk:
	$(MAKE) -C .. docker-rules.mk
-include ../docker-rules.mk
## Below you can add custom makefile commands and overrides
