# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:kms_key_id, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The OCID of the KMS key which is the master encryption key for the boot volume backup.
For more information about the Key Management service and encryption keys, see
[Overview of Key Management](https://docs.cloud.oracle.com/Content/KeyManagement/Concepts/keyoverview.htm) and
[Using Keys](https://docs.cloud.oracle.com/Content/KeyManagement/Tasks/usingkeys.htm).
  Rather use the property `kms_key` instead of a direct OCID reference.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String]')
end
