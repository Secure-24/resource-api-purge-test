require 'puppet/resource_api/simple_provider'

# Implementation for the spinner type using the Resource API.
class Puppet::Provider::FakeResource::FakeResource < Puppet::ResourceApi::SimpleProvider
  def get(context)
    (0..20).map do |i|
      {
        name: "fake_resource_#{i}",
        ensure: 'present',
      }
    end
  end

  def create(context, name, should)
    context.notice("Creating '#{name}' with #{should.inspect}")
  end

  def update(context, name, should)
    context.notice("Updating '#{name}' with #{should.inspect}")
  end

  def delete(context, name)
    context.notice("Deleting '#{name}'")
  end
end
