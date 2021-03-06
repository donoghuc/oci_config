# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_identity_dynamic_group) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  A dynamic group defines a matching rule. Every bare metal or virtual machine instance is deployed with an instance certificate.
The certificate contains metadata about the instance. This includes the instance OCID and the compartment OCID, along
with a few other optional properties. When an API call is made using this instance certificate as the authenticator,
the certificate can be matched to one or multiple dynamic groups. The instance can then get access to the API
based on the permissions granted in policies written for the dynamic groups.

This works like regular user/group membership. But in that case, the membership is a static relationship, whereas
in a dynamic group, the membership of an instance certificate to a dynamic group is determined during runtime.
For more information, see [Managing Dynamic Groups](https://docs.cloud.oracle.com/Content/Identity/Tasks/managingdynamicgroups.htm).

**Warning:** Oracle recommends that you avoid using any confidential information when you supply string values using
the API.

  Here is an example on how to use this:

    oci_identity_dynamic_group { 'tenant (root)/my_dynamic_group':
        ensure        => 'present',
        description   => 'description',
        matching_rule => "any {ANY {instance.id = 'ocid1.instance.region1.sea.abzwkljrobrgevdin34ftbzurf6vqutavtfqadaa2xlj3e66qwudvljkffxa'}}",
      }

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  add_title_attributes(:dynamic_group_name)

  ensurable

  parameter :name
  parameter :dynamic_group_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  parameter :compartment
  property  :id
  property  :compartment_id

  property :description
  property :matching_rule
  property :time_created
  property :lifecycle_state
  property :inactive_status
  property :freeform_tags
  property :defined_tags

  validate do
    validate_reference_propery(:compartment_id, self)
  end
end
