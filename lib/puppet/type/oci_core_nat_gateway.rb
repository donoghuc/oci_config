# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_core_nat_gateway) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  A NAT (Network Address Translation) gateway, which represents a router that lets instances
without public IPs contact the public internet without exposing the instance to inbound
internet traffic. For more information, see
[NAT Gateway](https://docs.cloud.oracle.com/Content/Network/Tasks/NATgateway.htm).

To use any of the API operations, you must be authorized in an
IAM policy. If you are not authorized, talk to an
administrator. If you are an administrator who needs to write
policies to give users access, see [Getting Started with
Policies](https://docs.cloud.oracle.com/Content/Identity/Concepts/policygetstarted.htm).

**Warning:** Oracle recommends that you avoid using any confidential information when you
supply string values using the API.

  Here is an example on how to use this:

    oci_core_nat_gateway { 'tenant (root)/my_nat_gatewway':
      ensure      => 'present',
      vcn         => 'my_compartment/my_vcn',
    }

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  add_title_attributes(:nat_gateway_name)

  ensurable

  parameter :name
  parameter :nat_gateway_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  parameter :compartment
  property  :id
  property  :compartment_id

  property :defined_tags
  property :freeform_tags
  property :block_traffic
  property :lifecycle_state
  property :nat_ip
  property :time_created
  property :vcn
  property :vcn_id

  validate do
    validate_reference_propery(:compartment_id, self)
    validate_reference_propery(:vcn_id, self)
  end
end
