require "vagrant"

module VagrantPlugins
  module HostRoute
    class Plugin < Vagrant.plugin("2")
      name "host_route"
      description <<-DESC
      Provides support for creating host routes.
      DESC

      config(:host_route, :provisioner) do
        require_relative "config"
        Config
      end

      provisioner(:host_route) do
        require_relative "provisioner"
        require_relative "bsd/host"
        Provisioner
      end
    end
  end
end
