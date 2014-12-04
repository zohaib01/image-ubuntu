Official Ubuntu images on Online Labs
====================================

Scripts to build the official Ubuntu images on Online Labs

These images are built using [Image Tools](https://github.com/online-labs/image-tools) and depends on the [armhf port of ubuntu-deboostrap docker images](https://registry.hub.docker.com/u/armbuild/ubuntu-debootstrap/).

Available tags
--------------

- trusty (14.04.1, 14.04)
- utopic (14.10, latest)
- vivid (15.04)

---

Commands
--------

    # build the image in a rootfs directory
    $ make rootfs
    
    # push the image on s3
    $ make publish_on_s3.tar
    
    # write the image to /dev/nbd1
    $ make install_on_disk
    
Full list of commands available at: https://github.com/online-labs/image-tools/tree/master#commands

Related projects
----------------

- https://github.com/online-labs/image-tools (Main project for building images on Online Labs)
- https://github.com/online-labs/image-builder (Old repository with full history)
- https://github.com/online-labs/ocs-scripts (Common scripts for distributions)

Links
-----

- [Community: Official Ubuntu Image](https://community.cloud.online.net/t/official-ubuntu-image/345?u=manfred)
- [Community: New Linux Distributions on C1](https://community.cloud.online.net/t/official-new-linux-distributions-debian-coreos-centos-fedora-arch-linux/229?u=manfred)
- [Online Labs Blog - Docker on C1](https://blog.cloud.online.net/2014/10/27/docker-on-c1/)
