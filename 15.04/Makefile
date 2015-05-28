DOCKER_NAMESPACE =	armbuild/
NAME =			scw-distrib-ubuntu
VERSION =		vivid
VERSION_ALIASES =	15.04
TITLE =			Ubuntu Vivid
DESCRIPTION =		Ubuntu Vivid (15.04)
SOURCE_URL =		https://github.com/scaleway/image-ubuntu
ASSETS =                patches/usr/bin/qemu-arm-static patches/usr/local/bin/qemu-arm-static


all: help


patches/usr/bin/qemu-arm-static:
	mkdir -p patches/usr/bin
	wget --no-check-certificate https://github.com/armbuild/qemu-user-static/raw/master/x86_64/qemu-arm-static -O $@
	chmod +x $@


patches/usr/local/bin/qemu-arm-static:
	mkdir -p patches/usr/local/bin
	ln -s ../../bin/qemu-arm-static $@


##
## Image tools  (https://github.com/scaleway/image-tools)
##
all:	../docker-rules.mk
../docker-rules.mk:
	$(MAKE) -C .. docker-rules.mk
-include ../docker-rules.mk

