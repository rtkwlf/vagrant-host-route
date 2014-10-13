# Vagrant Host Route Provisioner

A provisioner to configure a route from the host to a particular destination
via a particular gateway, with the gateway typically being on a Vagrant-managed
guest. The route is deleted if the guest is destroyed.

The implementation relies on Vagrant's host capabilities. Currently, the plugin
supports only BSD hosts and in particular has been tested only on OS X. However,
contributions to add support for other hosts are more than welcome.

## Installation

Use `vagrant plugin install`:

    $ vagrant plugin install vagrant-host-route

## Usage

The provisioner supports two attributes, `destination` and `gateway`, and
requires than both be specified.

### Example

Create a route to 10.1.1.0/24 via 10.0.5.1. It is assumed that 10.0.5.1 is an
address on of the interfaces of the guest being provisioned, although strictly
speaking that is not a requirement.

```ruby
config.vm.provision :host_route do |host_route|
  host_route.destination = "10.1.1.0/24"
  host_route.gateway = "10.0.5.1"
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
