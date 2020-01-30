# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_core_virtual_circuit) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  For use with Oracle Cloud Infrastructure FastConnect.

A virtual circuit is an isolated network path that runs over one or more physical
network connections to provide a single, logical connection between the edge router
on the customer's existing network and Oracle Cloud Infrastructure. *Private*
virtual circuits support private peering, and *public* virtual circuits support
public peering. For more information, see [FastConnect Overview](https://docs.cloud.oracle.com/Content/Network/Concepts/fastconnect.htm).

Each virtual circuit is made up of information shared between a customer, Oracle,
and a provider (if the customer is using FastConnect via a provider). Who fills in
a given property of a virtual circuit depends on whether the BGP session related to
that virtual circuit goes from the customer's edge router to Oracle, or from the provider's
edge router to Oracle. Also, in the case where the customer is using a provider, values
for some of the properties may not be present immediately, but may get filled in as the
provider and Oracle each do their part to provision the virtual circuit.

To use any of the API operations, you must be authorized in an IAM policy. If you're not authorized,
talk to an administrator. If you're an administrator who needs to write policies to give users access, see
[Getting Started with Policies](https://docs.cloud.oracle.com/Content/Identity/Concepts/policygetstarted.htm).

**Warning:** Oracle recommends that you avoid using any confidential information when you
supply string values using the API.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  add_title_attributes(:virtual_circuit_name)

  ensurable

  parameter :name
  parameter :virtual_circuit_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  parameter :compartment
  property  :id
  property  :compartment_id

  property :bandwidth_shape_name
  property :bgp_session_state
  property :cross_connect_mappings
  property :customer_bgp_asn
  property :defined_tags
  property :freeform_tags
  property :gateway
  property :gateway_id
  property :lifecycle_state
  property :oracle_bgp_asn
  property :provider_service
  property :provider_service_id
  property :provider_service_key_name
  property :provider_state
  property :public_prefixes
  property :reference_comment
  property :region
  property :service_type
  property :time_created
  property :type

  validate do
    validate_reference_propery(:compartment_id, self)
    validate_reference_propery(:gateway_id, self)
    validate_reference_propery(:provider_service_id, self)
  end
end
