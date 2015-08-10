# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.define :central do |central|
    central.vm.box = "ubuntu/trusty64"
    central.vm.network :private_network, ip: "10.11.1.100"
    central.vm.provision "shell", path: "install-java.sh"
    central.vm.provision "shell", path: "install-logstash.sh"
    central.vm.provision "shell", path: "install-redis.sh"
    central.vm.synced_folder "central-shared", "/vagrant-central-shared"
    central.vm.hostname = "smoker.example.com"
  end

  config.vm.define :logstash do |logstash|
    logstash.vm.box = "ubuntu/trusty64"
    logstash.vm.network :private_network, ip: "10.11.1.101"
    logstash.vm.provision "shell", path: "install-java.sh"

  end

  config.vm.define :redis do |redis|
    redis.vm.box = "ubuntu/trusty64"
    redis.vm.network :private_network, ip: "10.11.1.102"
  end
end
