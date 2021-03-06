# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:cool_down_in_seconds, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The minimum period of time to wait between scaling actions. The cooldown period gives the system time to stabilize
before rescaling. The minimum value is 300 seconds, which is also the default.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[Integer]')
end
