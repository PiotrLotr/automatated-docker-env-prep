### Automatated config for setting VM with Docker

#### Preperation

- Download and install Oracle VM VirtualBox.
- Download and install Vagrant. 

#### Configuration

1. `$ git clone https://github.com/PiotrLotr/automatated-docker-env-prep.git`
2.  `$ cd <path_to_cloned_repo>`
3. `$ vagrant up`

#### Check installation:

1. `$ vagrant ssh virtualbox`
2. `$ docker --version`

> Note: In order to be able to connect to your docker's  servers using vagrant host browser, you have to add proper routing. Please provide this command in windows CLI:
`$ route ADD 192.168.100.100 MASK 255.255.255.255 <vagrant-host-ip-adrresss>`

![Bridged_network_VM](https://user-images.githubusercontent.com/79337968/159251831-bf63964d-ced6-482c-90b8-04a81feae0d1.jpeg)
