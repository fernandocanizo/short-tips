# Installing docker and docker-compose in Ubuntu 18.04

## docker-compose

From https://docs.docker.com/compose/install/
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

## docker-compose bash completion

From https://docs.docker.com/compose/completion/
```
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.25.0/contrib/completion/bash/docker-compose -o /etc/bash_completion.d
```

## docker

From https://www.hostinger.com/tutorials/how-to-install-and-use-docker-on-ubuntu/
```
sudo apt update
sudo apt upgrade

# prerequisites
sudo apt-get install curl apt-transport-https ca-certificates software-properties-common

# add docker repo gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# add docker repo
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# install docker
sudo apt install docker-ce

# check
sudo systemctl status docker
```
