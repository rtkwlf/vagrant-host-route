module VagrantPlugins
  module HostRoute
    class Config < Vagrant.plugin("2", :config)
      attr_accessor :destination
      attr_accessor :gateway

      def initialize
        @destination = UNSET_VALUE
        @gateway = UNSET_VALUE
      end

      def finalize!
        @destination = nil if @destination == UNSET_VALUE
        @gateway = nil if @gateway == UNSET_VALUE
      end

      def validate(machine)
        errors = _detected_errors

        if !@destination
          errors << "A destination is required"
        end
        if !@gateway
          errors << "A gateway is required"
        end
      end
    end
  end
end

