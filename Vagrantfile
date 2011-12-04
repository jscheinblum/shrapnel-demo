# -*- mode: ruby -*-
# vi: set ft=ruby :
#

MOUNT_POINT = '/home/vagrant/project'

Vagrant::Config.run do |config|
  config.vm.box = "base"

  config.vm.network "192.168.42.3"
  config.vm.host_name = "dev-%s" % [Etc.getlogin]

  config.vm.customize do |vm|
    vm.memory_size = 2048
    vm.name = "shrapnel_demo"
    vm.network_adapters.each do |nic|
        nic.nat_driver.dns_pass_domain = true
        nic.nat_driver.dns_proxy = true
        nic.nat_driver.dns_use_host_resolver = true
    end
  end

  config.vm.share_folder("v-root", MOUNT_POINT, ".", :nfs => true)

  config.vm.provision :puppet do |puppet|
     puppet.manifests_path = "manifests"
     puppet.manifest_file  = "base.pp"
  end
end
