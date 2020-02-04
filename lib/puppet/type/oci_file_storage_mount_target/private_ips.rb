# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:private_ips, :array_matching => :all, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  include EasyType::ArrayProperty
  desc <<-DESC
  The Puppet name of the resource identified by `private_ip_ids`.

  See the documentation of private_ip_ids for all details.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  references :private_ip_ids
  reference_type :publicip
  data_type('Optional[Array[String]]')
end

child_of(:publicip, :private_ips) { "#{tenant_string}/#{private_ips}" }