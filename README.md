# AMD amdgpu-dkms patched for Linux 6.14

amdgpu-dkms patched for Ubuntu 25.04/Linux 6.14.

## Build
Rebuild with:

`dpkg-deb --root-owner-group -b . amdgpu-dkms_$(cat DEBIAN/control | grep "Version:" | sed -e "s/.*1://g")_all.deb`

## Install

`dpkg -i amdgpu-dkms_*_all.deb`
