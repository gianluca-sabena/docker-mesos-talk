# -*- mode: ruby -*-
# vi: set ft=ruby :

##
#
# Box images - https://github.com/boxcutter/centos

hosts = [
  {:name => "centos",   :ram => 2048}
]

Vagrant.configure("2") do |config|

  hosts.each do |host|
    config.vm.define host[:name] do |c|

      c.vm.box = "box-cutter/centos72"

      c.vm.hostname = host[:name]

      c.vm.network :private_network, type: "dhcp"

      c.vm.provider("virtualbox") do |vb|
        vb.memory = host[:ram]
      end

      # turn off shared folder
      c.vm.synced_folder ".", "/vagrant", :disabled => true
      # turn on custom shared folder
      c.vm.synced_folder "./centos7-cgroups", "/vagrant-shared/centos7-cgroups", :disabled => false
    end
  end
end
