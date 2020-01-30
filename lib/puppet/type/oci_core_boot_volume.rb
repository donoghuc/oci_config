# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
require 'puppet_x/enterprisemodules/oci/core'

Puppet::Type.newtype(:oci_core_boot_volume) do
  include Puppet_X::EnterpriseModules::Oci::Type
  desc <<-DESC
  A detachable boot volume device that contains the image used to boot a Compute instance. For more information, see
[Overview of Boot Volumes](https://docs.cloud.oracle.com/Content/Block/Concepts/bootvolumes.htm).

To use any of the API operations, you must be authorized in an IAM policy. If you're not authorized,
talk to an administrator. If you're an administrator who needs to write policies to give users access, see
[Getting Started with Policies](https://docs.cloud.oracle.com/Content/Identity/Concepts/policygetstarted.htm).

**Warning:** Oracle recommends that you avoid using any confidential information when you
supply string values using the API.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

  DESC

  add_title_attributes(:boot_volume_name)

  ensurable

  parameter :name
  parameter :boot_volume_name
  parameter :tenant
  parameter :oci_timeout
  parameter :oci_wait_interval
  parameter :present_states
  parameter :absent_states
  parameter :synchronized
  parameter :compartment
  property  :id
  property  :compartment_id

  property :availability_domain
  property :defined_tags
  property :system_tags
  property :freeform_tags
  property :image
  property :image_id
  property :is_hydrated
  property :lifecycle_state
  property :size_in_gbs
  property :source_details
  property :time_created
  property :volume_group
  property :volume_group_id
  property :kms_key
  property :kms_key_id
  property :backup_policy
  property :backup_policy_id

  validate do
    validate_reference_propery(:compartment_id, self)
    validate_reference_propery(:image_id, self)
    validate_reference_propery(:volume_group_id, self)
    validate_reference_propery(:kms_key_id, self)
    validate_reference_propery(:backup_policy_id, self)
  end
end
