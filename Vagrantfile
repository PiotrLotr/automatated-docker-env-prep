Vagrant.configure("2") do |config|

  config.vm.define "virtualbox" do |vb|
    vb.vm.box = "ubuntu/bionic64"
    vb.vm.hostname = "ubuntu"
    # network configuration
    vb.vm.network "private_network", ip: "192.168.10.0" 
    vb.vm.network "forwarded_port", guest: 22, host: 10200
    vb.vm.network "forwarded_port", guest: 80, host: 10300
    vb.vm.provider "virtualbox" do |vb|
      vb.memory = 4096
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    end
    # user data:
    vb.vm.provision "file", source: "./prepare-docker.sh", destination: "./prepare-docker.sh"
    vb.vm.provision "shell", 
      inline: "/bin/sh ./prepare-docker.sh"
  end  
end
