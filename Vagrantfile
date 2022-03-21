Vagrant.configure("2") do |config|

  config.vm.define "virtualbox" do |vb|
    vb.vm.box = "ubuntu/bionic64"
    vb.vm.hostname = "ubuntu"
    # network configuration
    vb.vm.network "public_network", ip: "192.168.100.100"
    vb.vm.network "public_network", bridge: "en1: Wi-Fi (AirPort)"
    vb.vm.network "forwarded_port", guest: 22, host: 10200
    vb.vm.network "forwarded_port", guest: 80, host: 10300
    vb.vm.provider "virtualbox" do |vb|
      vb.memory = 4096
    end
    # user data:
    vb.vm.provision "file", source: "./prepare-docker.sh", destination: "./prepare-docker.sh"
    vb.vm.provision "shell", 
      inline: "/bin/sh ./prepare-docker.sh"
  end  
end
