# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:vips, :array_matching => :all, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  include EasyType::ArrayProperty
  desc <<-DESC
  The Puppet name of the resource identified by `vip_ids`.

  See the documentation of vip_ids for all details.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  references :vip_ids
  reference_type :vip
  data_type('Optional[Array[String]]')
end

child_of(:vip, :vips) { "#{tenant_string}/#{vips}" }
