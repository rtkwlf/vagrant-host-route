module VagrantPlugins
  module HostRoute
    class Provisioner < Vagrant.plugin("2", :provisioner)
      def provision
        @machine.env.host.capability(:configure_host_route,
                                     config.destination, config.gateway)
      end

      def cleanup
        @machine.env.host.capability(:delete_host_route, config.destination)
      end
    end
  end
end
