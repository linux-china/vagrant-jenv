vagrant-jenv
===================================
jenv provision for Vagrant

### Install
$ vagrant plugin install vagrant-jenv

Because jenv needs curl, unzip etc tools, please use puppet to install curl and unzip package

### Code

    config.vm.provision :jenv do |jenv|
        jenv.candidates = ['maven:3.1.1','ant:1.9.2']
    end

