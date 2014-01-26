module VagrantPlugins
  module Jenv
    class Config < Vagrant.plugin("2", :config)
      attr_accessor :candidates

      def initialize
        @candidates = UNSET_VALUE
      end

      def finalize!
        @candidates = [] if @candidates == UNSET_VALUE
      end

    end
  end
end
