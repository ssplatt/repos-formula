# repos-formula
Salt formula for easily toggling additional software repositories.

## Usage

basic usage:
```
repos:
  debian_backports:
    enabled: True
  elastics:
    enabled: True
  nginx:
    enabled: True
```

or override the defaults:
```
repos:
  ceph:
    enabled: true
    url: https://download.ceph.com/debian-luminous/
```
the nginx config will automatically add the OS name and OS Codename via grains, so it can be used with Ubuntu and Debian if needed. The other configs will need modifications to work with other distributions in the future.
