# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:private_ip_ids, :array_matching => :all, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  include EasyType::ArrayProperty
  desc <<-DESC
  The OCIDs of the private IP addresses associated with this mount target.
  Rather use the property `private_ips` instead of a direct OCID reference.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[Array[String]]')
end
