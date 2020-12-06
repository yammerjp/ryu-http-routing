# [Vagrantを使ってUbuntu20.04を構築する | mebee](https://mebee.info/2020/06/17/post-12564/)
# user ... vagrant / password ... vagrant
Vagrant.configure("2") do |config| 
  # box
  config.vm.box = "rbock44/ubuntu20.04"
  config.vm.box_version = "1.0.0"
  # IP
  config.vm.network "private_network", ip: "192.168.33.26"
  # メモリ/CPU
  config.vm.provider "virtualbox" do |vb|
  vb.memory = 2048
  vb.cpus = 2
  end
end
