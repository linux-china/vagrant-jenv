module VagrantPlugins
  module Jenv
    class Plugin < Vagrant.plugin("2")

      name "Vagrant jenv plugin"

      description <<-DESC
      Vagrant jenv plugin
      DESC

=begin
      command "jenv-info" do
        require_relative "vagrant-jenv/command"
        Command
      end
=end


      config(:jenv, :provisioner) do
        require_relative "vagrant-jenv/config"
        Config
      end

      provisioner :jenv do
        require_relative "vagrant-jenv/provisioner"
        Provisioner
      end

    end

  end
end
