# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_core_instance_console_connection) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  The `InstanceConsoleConnection` API provides you with console access to Compute instances,
enabling you to troubleshoot malfunctioning instances remotely.

For more information about console access, see
[Accessing the Console](https://docs.cloud.oracle.com/Content/Compute/References/serialconsole.htm).

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  add_title_attributes(:instance_console_connection_name)

  ensurable

  parameter :name
  parameter :instance_console_connection_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  parameter :compartment
  property  :id
  property  :compartment_id

  property :connection_string
  property :defined_tags
  property :fingerprint
  property :freeform_tags
  property :instance
  property :instance_id
  property :lifecycle_state
  property :vnc_connection_string
  property :public_key

  validate do
    validate_reference_propery(:compartment_id, self)
    validate_reference_propery(:instance_id, self)
  end
end
