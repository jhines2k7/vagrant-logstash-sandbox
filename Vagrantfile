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
  config.vm.box = "puppetlabs/centos-7.0-64-nocm"

  config.vm.define :logstash_server do |logstash_server|
    logstash_server.vm.network :private_network, ip: "192.169.33.10"
    # logstash_server.vm.provision "shell", path: "install-java.sh"
    # logstash_server.vm.provision "shell", path: "install-logstash.sh"
    # logstash_server.vm.network "forwarded_port", guest: 80, host: 8080
    # logstash_server.vm.network "forwarded_port", guest: 8080, host: 2323
    logstash_server.vm.synced_folder "shared", "/shared"
    logstash_server.vm.hostname = "elk.elkstack.com"
  end

  config.vm.define :redis_server do |redis_server|
    redis_server.vm.network :private_network, ip: "192.169.33.11"
    # redis_server.vm.provision "shell", path: "install-redis.sh"
    redis_server.vm.hostname = "redis_server.elkstack.com"
  end

  config.vm.define :grails_server do |grails_server|
    grails_server.vm.network :private_network, ip: "192.169.33.12"
    # grails_server.vm.provision "shell", path: "install-java.sh"
    # grails_server.vm.provision "shell", path: "install-elasticsearch.sh"
    grails_server.vm.hostname = "grails_server.elkstack.com"
  end
end
