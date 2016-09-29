# -*- mode: ruby -*-
# vi: set ft=ruby :

#CONFIGURATION FOR TWIN
#Vagrant is running on OSX Sierra latest
#The host machines are a cluster controlled by the chef machine

#LAST UPDATE Fri 09/28/16 

#### TEST COMMENT FOR COMMITS

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|



# Enables Vagrant-Berkshelf plugin with 'true' flag. If it is not installed please run 
# "vagrant plugin install vagrant-berkshelf"

config.berkshelf.enabled = true

# Enables Vagrant-Omnibus plugin 

#config.omnibus.chef_version = :latest

### VIRTUAL MACHINES CONFIG # NEW MACHINES WILL BE ADDED UNDER THE OLD ONES

# Enables Vagrant-Berkshelf plugin. If it is not installed please run 
# "vagrant plugin install vagrant-berkshelf"

config.berkshelf.enabled = false


###### INIT VM 1 ########### VM 1 IS NOT NEEDED RIGHT NOW 
#  config.vm.define "nagios" do |nagios|
#  nagios.vm.box = "bento/centos-7.1"
#
#  config.vm.network "public_network", bridge: "en0: Ethernet"
#
#end
#
######### END VM1 ############

######### INIT VM2 ###########
 
  config.vm.define "chef" do |chef|
  chef.vm.box = "bento/centos-7.1"
  config.vm.hostname = "chef"
  config.vm.network "public_network", bridge: "en0: Ethernet", mode: "DHCP"
 
end

#Configure provisioner for chef VM -- Testing phase

  config.vm.provision "chef_solo" do |chef_pro|
  chef_pro.cookbooks_path = ["chef-repo/cookbooks"]
  chef_pro.add_recipe "init_setup"
end




#Configure hardware resources per VM

  config.vm.provider "virtualbox" do |v|
    v.memory = 2000 
    v.cpus = 2
end

######### END VM2 ############

###### INIT VM 3 ###########
  config.vm.define "host1" do |host1|
  host1.vm.box = "bento/centos-7.1"

  host1.vm.hostname = "host1"
  host1.berkshelf.enabled = true
  host1.omnibus.chef_version = :latest

  config.vm.network "public_network", bridge: "en0: Ethernet", mode: "DHCP"

end

#Configure provisioner for chef VM -- Testing phase

  config.vm.provision :chef_solo do |chef_pro|
  chef_pro.cookbooks_path = ["chef-repo/cookbooks"]
  chef_pro.add_recipe "init_setup"
  chef_pro.run_list = ["init_setup"]


  config.vm.provision "chef_solo" do |chef_pro|
  chef_pro.cookbooks_path = ["chef-repo/cookbooks"]
  chef_pro.add_recipe "init_setup"
end

#Configure hardware resources per VM

  #config.vm.provider "virtualbox" do |v|
  #  v.memory = 2000 
  #  v.cpus = 6
#end

######### END VM3 ############
###### INIT VM 4 ###########
  config.vm.define "host2" do |host2|
  host2.vm.box = "bento/centos-7.1"

  config.vm.network "public_network", bridge: "en0: Ethernet", mode: "DHCP"

end

  config.vm.provision "chef_solo" do |chef_pro|
  chef_pro.cookbooks_path = ["chef-repo/cookbooks"]
  chef_pro.add_recipe "init_setup"
end

#Configure hardware resources per VM

  #config.vm.provider "virtualbox" do |v|
  #  v.memory = 2000 
  #  v.cpus = 6
#end
######### END VM4 ############
###### INIT VM 5 ###########
  config.vm.define "host3" do |host3|
  host3.vm.box = "bento/centos-7.1"

  config.vm.network "public_network", bridge: "en0: Ethernet"

end

######### END VM5 ############



  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
end