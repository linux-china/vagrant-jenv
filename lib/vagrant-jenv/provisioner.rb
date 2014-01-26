module VagrantPlugins
  module Jenv
    class Provisioner < Vagrant.plugin("2", "provisioner")
      def provision
        #@machine.communicate.execute("ls -al")
        puts "#{config.candidates.join(' ')}"
      end
    end
  end
end