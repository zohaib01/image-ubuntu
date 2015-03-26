Official Ubuntu images on Online Labs [![Build Status](https://travis-ci.org/online-labs/image-ubuntu.svg?branch=master)](https://travis-ci.org/online-labs/image-ubuntu)
=====================================

Scripts to build the official Ubuntu images on Online Labs

These images are built using [Image Tools](https://github.com/online-labs/image-tools) and depends on the [armhf port of ubuntu-deboostrap docker images](https://registry.hub.docker.com/u/armbuild/ubuntu-debootstrap/) and scripts from [ocs-scripts](https://github.com/online-labs/ocs-scripts).

<img src="http://design.ubuntu.com/wp-content/uploads/logo-ubuntu_no®-black_orange-hex.svg" width="250px" />

---

**This image is meant to be used on a C1 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.**

[More info](https://github.com/online-labs/image-tools#docker-based-builder)

Available tags
--------------

- precise (12.04.5, 12.04)
- trusty (14.04.1, 14.04, lts)
- utopic (14.10, latest)
- vivid (15.04)

---

Install
-------

Build and write the image to /dev/nbd1 (see [documentation](https://doc.cloud.online.net/howto/create_image.html))

    $ make install

Full list of commands available at: [online-labs/image-tools](https://github.com/online-labs/image-tools/tree/master#commands)

Links
-----

- [Community: Official Ubuntu Image](https://community.cloud.online.net/t/official-ubuntu-image/345?u=manfred)
- [Community: New Linux Distributions on C1](https://community.cloud.online.net/t/official-new-linux-distributions-debian-coreos-centos-fedora-arch-linux/229?u=manfred)

---

A project by [![Online Labs](https://raw.githubusercontent.com/online-labs/doc.cloud.online.net/master/www/documentation/docs_public/contents/images/logo_footer.png)](http://labs.online.net/)
