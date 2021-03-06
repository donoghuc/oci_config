# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:description, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The description you assign to the `IdentityProvider` during creation.
Does not have to be unique, and it's changeable.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String]')
end
