#Vagrant projects
Various vagrant libvirt provider projects that I should probably split into their own repos...
###Requirements
* [Vagrant](https://www.vagrantup.com/)
* [Vagrant Libvirt Provider](https://github.com/pradels/vagrant-libvirt)
* Libvirt with hypervisor of choice (KVM, QEMU)
* [Ubuntu box](https://atlas.hashicorp.com/naelyn/boxes/ubuntu-trusty64-libvirt) with libvirt provider support, i.e:
```
vagrant box add "naelyn/ubuntu-trusty64-libvirt"
```
* May have other dependencies I've forgotten (fair warning)

##Juno DevStack (OpenStack) environment
Just what it sounds like

##Ubuntu test
To be branched and/or forked as they progress. Currently just an ubuntu 14 (libvirt) box with "private" (host-only) networking.
