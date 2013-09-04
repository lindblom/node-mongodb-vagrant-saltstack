Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  ## For masterless, mount your salt file root
  config.vm.synced_folder "salt/srv/", "/srv/"

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  ## Use all the defaults:
  config.vm.provision :salt do |salt|
    salt.minion_config = "salt/minion"
    salt.run_highstate = true
  end

end