# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:peer_region_name, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  If this RPC is peered, this value is the region that contains the other RPC.

Example: `us-ashburn-1`

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String]')
end
