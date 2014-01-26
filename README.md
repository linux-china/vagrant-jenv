vagrant-jenv
===================================
jenv provision for Vagrant

### Install
$ vagrant plugin install vagrant-jenv

### Code

    config.vm.provision :jenv do |jenv|
        jenv.maven = '3.1.1'
    end

