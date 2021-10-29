# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    ## Escolha da Box (Imagem)
    config.vm.box = "ubuntu/focal64"
  
    ## WORKSPACE
    config.vm.define 'cloudBootCamp' do |cloudBootCamp|
      cloudBootCamp.vm.hostname = "cloudBootCamp"
  
      # Configurações de Tamanho da VM
      cloudBootCamp.vm.provider "virtualbox" do |v|
        v.name = "cloudBootCamp"
        v.memory = 2048
        v.cpus = 3
      end
  
      # Instala o Ansible e faz as configurações da VM
      cloudBootCamp.vm.provision :ansible_local do |ansible|
          ansible.install_mode = "default"
          ansible.playbook = "ansible/playbook.yml"
          # ansible.verbose  = "vvv"
          ansible.verbose  = true
          ansible.install  = true
          ansible.limit    = "all" 
          ansible.inventory_path = "ansible/inventory"
      end
  
    end
  
  end
  