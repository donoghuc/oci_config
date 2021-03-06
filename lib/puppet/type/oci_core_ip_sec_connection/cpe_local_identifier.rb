# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:cpe_local_identifier, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  Your identifier for your CPE device. Can be either an IP address or a hostname (specifically, the
fully qualified domain name (FQDN)). The type of identifier you provide here must correspond
to the value for `cpeLocalIdentifierType`.

If you don't provide a value, the `ipAddress` attribute for the {Cpe}
object specified by `cpeId` is used as the `cpeLocalIdentifier`.

For information about why you'd provide this value, see
[If Your CPE Is Behind a NAT Device](https://docs.cloud.oracle.com/Content/Network/Tasks/overviewIPsec.htm#nat).

Example IP address: `10.0.3.3`

Example hostname: `cpe.example.com`

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[String]')
end
