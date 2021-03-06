# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:region, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The Oracle Cloud Infrastructure region where this virtual
circuit is located.
Example: `phx`

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String]')
end
