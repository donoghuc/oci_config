# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:instance_id, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The OCID of the instance you want to use as the basis for the image.
  Rather use the property `instance` instead of a direct OCID reference.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String]')
end
