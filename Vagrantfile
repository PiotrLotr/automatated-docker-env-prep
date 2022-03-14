Vagrant.configure("2") do |config|

  config.vm.define "virtualbox" do |vb|
    vb.vm.box = "ubuntu/bionic64"
    vb.vm.hostname = "ubuntu"
    vb.vm.network "private_network", ip: "192.168.1.0"   
    vb.vm.network "forwarded_port", guest: 22, host: 10200
    vb.vm.network "forwarded_port", guest: 9000, host: 9000
    vb.vm.provider "virtualbox" do |vb|
        vb.memory = 4096``
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    end
  end
end