require 'puppet/resource_api'

Puppet::ResourceApi.register_type(
  name: 'fake_resource',
  docs: <<-EOS,
      A totally fake resource for testing purposes
    EOS
  attributes: {
    ensure: {
      type:    'Enum[present, absent]',
      desc:    'Whether this fake resource should be present or absent on the target system.',
      default: 'present',
    },
    name: {
      type:      'String',
      desc:      'The name of the fake resource you want to manage.',
      behaviour: :namevar,
    },
  },
)
