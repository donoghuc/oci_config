# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:placement_configurations, :array_matching => :all, :parent => Puppet_X::EnterpriseModules::Oci::Property) do

  def insync?(_)
    true  # This is readonly property
  end

  desc <<-DESC
  The placement configurations for the instance pool. Provide one placement configuration for
each availability domain.

To use the instance pool with a regional subnet, provide a placement configuration for
each availability domain, and include the regional subnet in each placement
configuration.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[Array[Oci_config::CreateInstancePoolPlacementConfigurationDetails]]')
end