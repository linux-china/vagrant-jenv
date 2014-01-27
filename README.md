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

### Development
Create a new gemset named 'vagrant' then run bundle to install gems.

* rake build
* open another console tab, and execute 'vagrant plugin install pkg/vagrant-jenv-0.0.1.gem'
* vagrant up then execute vagrant provision
* flow: change code, build, uninstall plugin and install again