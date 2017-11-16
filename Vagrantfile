Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision :shell, :path => "bootstrap.sh"
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "xenial64-iotedge-docker"
    vb.memory = "512"
    vb.cpus = 1
  end
end
