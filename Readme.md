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