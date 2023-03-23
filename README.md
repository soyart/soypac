# [soypac](https://github.com/artnoi43/soypac)

An Arch Linux pacman user repository, available on [artnoi43.github.io/soypac](https://artnoi43.github.io/soypac).

## Using this pacman repository

### Importing GPG key to pacman

Use `pacman-key` to import my GPG key from keyserver, check its fingerprint, and locally sign the key:

```sh
$ sudo pacman-key --recv-keys 2F7FDEEEB7E1D64119EC8AC0E7457D4B1A23879E
```

If the above command failed due to kerserver errors, try specifying more exact URL:

```sh
$ sudo pacman-key --keyserver hkp://keyserver.ubuntu.com --recv-keys 2F7FDEEEB7E1D64119EC8AC0E7457D4B1A23879E
$ sudo pacman-key --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 2F7FDEEEB7E1D64119EC8AC0E7457D4B1A23879E
```

After key is imported, check its fingerprint and locally sign it:

```sh
$ sudo pacman-key --finger 2F7FDEEEB7E1D64119EC8AC0E7457D4B1A23879E
$ sudo pacman-key --lsign-key 2F7FDEEEB7E1D64119EC8AC0E7457D4B1A23879E
```

### Add this repo to [`pacman.conf(5)`](https://archlinux.org/pacman/pacman.conf.5.html)

Add the following snippet to `/etc/pacman.conf`:

```txt
[soypac]
server = https://artnoi43.github.io/soypac/x86_64
```

### Update and sync package database

```sh
$ sudo pacman -Sy
```

And the next time you install a software via Pacman, if soypac had higher priority then the package would be downloaded from soypac.