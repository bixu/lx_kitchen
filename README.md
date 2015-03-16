LX Kitchen
=====================

Test SmartOS LX zones using Vagrant and Test Kitchen.

## Prerequisites

* Have a look at @sjorge's initial work at http://goo.gl/gu6kp8
* Vagrant (https://www.vagrantup.com/downloads.html)
* The `vagrant-smartos-zones` plugin, `test-kitchen` gem and `kitchen-vagrant` plugin:
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


## Writing tests

See Test Kitchen documentation (http://kitchen.ci/docs/getting-started/writing-test)

## Caveats

* Only contains tests for Ubuntu LX zones currently.
* Because LX zones are by nature much fatter than SmartOS zones and have to be downloaded for every test run, you'll want a pretty fast internet connection to facilitate faster testing. 

## Contributing

The standard fork/feature branch/pull request rigamarole.  Improvements and expanded test coverage are welcome :)
