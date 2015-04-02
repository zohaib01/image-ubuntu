## -*- docker-image-name: "armbuild/scw-distrib-ubuntu:vivid" -*-
FROM armbuild/ubuntu-debootstrap:vivid
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Environment
ENV DEBIAN_FRONTEND noninteractive
# Useful for image inheritance
ENV SCW_BASE_IMAGE armbuild/scw-ubuntu:vivid


# Patch rootfs for docker-based builds
RUN apt-get -y -q update \
 && apt-get -y -qq install bash curl lsb-release tar \
 && apt-get -y clean \
 && curl -Lq http://j.mp/scw-skeleton | FLAVORS=common,docker-based bash -e \
 && /usr/local/sbin/builder-enter


# Install packages
ADD ./patches/etc/apt/sources.list /etc/apt/sources.list
RUN apt-get -q update && \
    apt-get -y --force-yes -qq upgrade && \
    apt-get -y --force-yes -qq install \
	bash-completion \
	bc \
	ca-certificates \
	cron \
	curl \
	dbus \
	dstat \
	ethstatus \
	file \
	fio \
	htop \
	ioping \
	iotop \
	iperf \
	iptables \
	iputils-ping \
	isc-dhcp-client \
	less \
	locate \
	lsb-release \
	lsof \
	make \
	man-db \
	mg \
	mosh \
	nano \
	nbd-client \
	net-tools \
	netcat \
	ntp \
	ntpdate \
	python-apt \
	python-yaml \
	rsync \
	rsyslog \
	screen \
	shunit2 \
	socat \
	ssh \
	sudo \
	sysstat \
	tcpdump \
	tmux \
	vim \
	wget \
	whiptail \
	xnbd-client \
    && apt-get clean


# Patch rootfs
# - Tweaks rootfs so it matches Scaleway infrastructure
RUN rm -f /etc/update-motd.d/10-help-text /etc/update-motd.d/00-header
RUN curl -Lq http://j.mp/scw-skeleton | FLAVORS=upstart bash -e
ADD ./patches/etc/ /etc/


# Configure locales
RUN locale-gen en_US.UTF-8 && \
    locale-gen fr_FR.UTF-8 && \
    dpkg-reconfigure locales


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
