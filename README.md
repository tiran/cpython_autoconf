# cpython_autoconf

Container image with autotools to regenerate Python's configure script.

## Fedora, CentOS and other SELinux-enabled systems with podman

```shell
$ cd cpython
$ podman run --rm --pull=always -v$(pwd):/src:Z quay.io/tiran/cpython_autoconf:269
$ podman run --rm --pull=always -v$(pwd):/src:Z quay.io/tiran/cpython_autoconf:271
```

## Arch, Debian, Gentoo, Ubuntu

```shell
$ cd cpython
$ docker run --rm --pull=always -v$(pwd):/src quay.io/tiran/cpython_autoconf:269
$ podman run --rm --pull=always -v$(pwd):/src quay.io/tiran/cpython_autoconf:271
```
