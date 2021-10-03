# cpython_autoconf

Container image with autotools to regenerate Python's configure script.

## Fedora, CentOS and other SELinux-enabled systems with podman

```shell
$ cd cpython
$ podman run --rm --pull=always -v.:/src:Z quay.io/tiran/cpython_autoconf:latest
```

## Arch, Debian, Gentoo, Ubuntu

```shell
$ cd cpython
$ docker run --rm --pull=always -v.:/src quay.io/tiran/cpython_autoconf:latest
```
