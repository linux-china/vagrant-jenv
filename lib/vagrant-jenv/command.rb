module VagrantPlugins
  module Jenv
    class Command < Vagrant.plugin(2, "command")

      # @return [String]
      def self.synopsis
        "Display jenv version"
      end

      def execute
        # Execute the actual SSH
        with_target_vms(nil, single_target: true) do |vm|
          vm.config.exec.finalize! # TODO: do we have to call it explicitly?

          @logger.info("Detect jenv version: ")
          ssh_opts = {extra_args: ['-q']} # make it quiet
          env = vm.action(:ssh_run, ssh_run_command: "jenv version", ssh_opts: ssh_opts)
          status = env[:ssh_run_exit_status] || 0
          return status
        end
      end
    end # Command
  end # Exec
end # VagrantPlugins