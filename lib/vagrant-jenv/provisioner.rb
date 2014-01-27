module VagrantPlugins
  module Jenv
    class Provisioner < Vagrant.plugin("2", "provisioner")
      def provision
        @machine.communicate.execute('if [[ ! -d "${HOME}/.jenv" ]]; then curl -L -s get.jenv.io | bash ; fi') do |type, data|
          @machine.env.ui.info data
        end
        @machine.env.ui.info "Installing jenv candidates...}"
        @machine.communicate.execute('jenv config auto true')
        @machine.communicate.execute('jenv repo update')
        config.candidates.each do |pair|
          @machine.communicate.execute("jenv install #{pair}")
          @machine.env.ui.info "#{pair} installed"
        end
      end
    end
  end
end