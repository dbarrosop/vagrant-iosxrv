# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider 'virtualbox' do |_, override|
    # Disable synced folders
    config.vm.synced_folder ".", "/vagrant", disabled: true
  end

  config.ssh.username = "vagrant"
  config.ssh.passwird = "vagrant"
end
