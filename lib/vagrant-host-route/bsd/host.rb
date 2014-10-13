require "vagrant"

module VagrantPlugins
  module HostBSD
    class Plugin < Vagrant.plugin("2")
      host_capability("bsd", "configure_host_route") do
        require_relative "configure_route"
        Cap::HostRoute
      end

      host_capability("bsd", "delete_host_route") do
        require_relative "configure_route"
        Cap::HostRoute
      end
    end
  end
end
