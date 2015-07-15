# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/centos-6.6-64-puppet"

  config.vm.define :sv1 do |sv|
    sv.vm.hostname = "treasure2015"
    sv.vm.network :private_network, ip: "192.168.56.230" 
    sv.vm.provider :virtualbox do |vb|
      vb.name = "treasure2015"
    end
    sv.vm.provision :puppet, :options => '--modulepath="/vagrant/puppet/modules":"/vagrant/puppet/roles"' do |puppet|
       puppet.manifests_path  = ["vm","/vagrant/puppet/manifests"]
       puppet.manifest_file  = "app.pp"
    end
  end
end
