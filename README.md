LX Kitchen
=====================

Test SmartOS LX zones using Vagrant and Test Kitchen.

## Prerequisites

* Vagrant (https://www.vagrantup.com/downloads.html)
* The vagrant-smartos-zones plugin, test-kitchen gem and kitchen-vagrant plugin:
```
vagrant plugin install vagrant-smartos-zones
gem install test-kitchen
gem install kitchen-vagrant
```

## Running it
```
git clone https://github.com/bixu/lx_kitchen.git
cd lx_kitchen
kitchen test
```
See documenation for the preqrequisite tools for more detail.


## Caveats

* Only contains tests for Ubuntu LX zones currently.

## Contributing

The standard fork/feature branch/pull request rigamarole.  Improvements and expanded test coverage are welcome :)
