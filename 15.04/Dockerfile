## -*- docker-image-name: "armbuild/scw-distrib-ubuntu:vivid" -*-
FROM armbuild/ubuntu-debootstrap:vivid
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Environment
ENV DEBIAN_FRONTEND noninteractive
# Useful for image inheritance
ENV SCW_BASE_IMAGE armbuild/scw-ubuntu:vivid


# ./patches/usr/local/bin/ is where the builder downloads qemu-*-static binaries
# ADD ./patches/usr/local/bin/ /usr/local/bin/


# ./patches/etc/apt/ contains source.list + apt.conf tuning
ADD ./patches/etc/apt/ /etc/apt/


# Patch rootfs for docker-based builds
RUN apt-get -y -q update \
 && apt-get -y -qq install bash curl lsb-release tar \
 && apt-get -y clean \
 && curl -Lq http://j.mp/scw-skeleton | FLAVORS=common,docker-based,systemd bash -e \
 && /usr/local/sbin/builder-enter


# Install packages
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
	haveged \
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
	module-init-tools \
	mosh \
	nano \
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
	systemd-sysv \
	tcpdump \
	tmux \
	vim \
	wget \
	whiptail \
    && apt-get clean


# Patch rootfs
# - Tweaks rootfs so it matches Scaleway infrastructure
RUN rm -f /etc/update-motd.d/10-help-text /etc/update-motd.d/00-header
ADD ./patches/etc/ /etc/


# Configure locales
RUN locale-gen en_US.UTF-8 && \
	locale-gen fr_FR.UTF-8 && \
	dpkg-reconfigure locales


# Default target
RUN systemctl set-default multi-user


# Configure Systemd
RUN systemctl enable \
        oc-fetch-ssh-keys \
	oc-sync-kernel-modules \
	oc-generate-ssh-keys \
	oc-gen-machine-id \
	oc-kernel-check \
 && systemctl disable \
	getty@tty1 \
	kmod-static-nodes.service \
	proc-sys-fs-binfmt_misc.automount \
	systemd-modules-load.service \
	systemd-update-utmp-runlevel


# make /sbin/init a relative symlink for initrd boot
RUN rm -f /sbin/init /bin/init \
 && ln -sf ../lib/systemd/systemd /sbin/init \
 && ln -sf ../lib/systemd/systemd /bin/init


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
