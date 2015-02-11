DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-distrib-ubuntu
VERSION =		trusty
VERSION_ALIASES =	14.04.1 14.04 lts
TITLE =			Ubuntu Trusty
DESCRIPTION =		Ubuntu Trusty (14.04 LTS)
SOURCE_URL =		https://github.com/online-labs/image-ubuntu


## Image tools  (https://github.com/online-labs/image-tools)
all:	../docker-rules.mk
../docker-rules.mk:
	$(MAKE) -C .. docker-rules.mk
-include ../docker-rules.mk
## Below you can add custom makefile commands and overrides
