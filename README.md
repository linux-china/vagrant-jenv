vagrant-jenv
===================================
jenv provision for Vagrant

### Install
$ vagrant plugin install vagrant-jenv

### Code

    config.vm.provision :jenv do |jenv|
        jenv.candidates = ['maven:3.1.1','ant:1.9.2']
    end

