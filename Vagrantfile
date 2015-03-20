# This Vagrantfile exists for the purposes of development on
# this plugin.
Vagrant.configure('2') do |config|
  config.vm.provider 'virtualbox' do |v|
    v.memory = 2048
  end

  config.ssh.insert_key = false

  # See https://vagrantcloud.com/livinginthepast for SmartOS boxes
  config.vm.box = 'livinginthepast/smartos-base64'
  config.vm.communicator = 'smartos'

  # livinginthepast boxes include a default platform_image. Set
  # here to download/use a different image.
  config.global_zone.platform_image = 'platform-hourly'
  config.global_zone.platform_image_url = 'http://us-east.manta.joyent.com/nahamu/public/smartos/platform-hourly.iso'

  config.zone.name = 'lx_zone'
  config.zone.brand = 'lx'
  config.zone.image = '818cc79e-ceb3-11e4-99ee-7bc8c674e754'
  config.zone.memory = 1536
  config.zone.disk_size = 5
end
