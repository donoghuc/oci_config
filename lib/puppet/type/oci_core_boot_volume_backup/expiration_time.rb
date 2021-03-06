# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:expiration_time, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  desc <<-DESC
  The date and time the volume backup will expire and be automatically deleted.
Format defined by RFC3339. This parameter will always be present for backups that
were created automatically by a scheduled-backup policy. For manually created backups,
it will be absent, signifying that there is no expiration time and the backup will
last forever until manually deleted.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  data_type('Optional[Runtime]')
end
