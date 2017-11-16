#!/bin/bash

main() {
  update_go
  docker_go
  iotedge_go
  dotnet_go
}

update_go() {
  sudo apt-get -q -y update
  sudo apt-get -q -y upgrade
}

docker_go() {
  sudo apt-get -q -y install apt-transport-https ca-certificates curl software-properties-common
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
  sudo apt-get -q -y update
  sudo apt-get -q -y install docker-ce
}

iotedge_go() {
  sudo apt-get -q -y install python-pip
  sudo pip install -U azure-iot-edge-runtime-ctl
}

dotnet_go() {
  curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
  sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

  sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
  sudo apt-get -q -y update
  sudo apt-get -q -y install dotnet-sdk-2.0.2
}

main
exit 0
