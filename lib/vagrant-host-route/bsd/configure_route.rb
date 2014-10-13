module VagrantPlugins
  module HostBSD
    module Cap
      class HostRoute
        include Vagrant::Util

        def self.configure_host_route(environment, destination, gateway)
          r = Vagrant::Util::Subprocess.execute("route", "get", destination)
          if !r.stdout.include? "gateway: #{gateway}"
            delete_host_route(environment, destination)
            Vagrant::Util::Subprocess.execute("sudo", "route", "-q", "add", destination, gateway)
          end
        end

        def self.delete_host_route(environment, destination)
          Vagrant::Util::Subprocess.execute("sudo", "route", "-q", "delete", destination)
        end
      end
    end
  end
end
