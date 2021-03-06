# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newproperty(:volume_backups, :array_matching => :all, :parent => Puppet_X::EnterpriseModules::Oci::Property) do
  include EasyType::ArrayProperty
  desc <<-DESC
  The Puppet name of the resource identified by `volume_backup_ids`.

  See the documentation of volume_backup_ids for all details.

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).
  DESC
  references :volume_backup_ids
  reference_type :volumebackup
  data_type('Optional[Array[String]]')
end

child_of(:volumebackup, :volume_backups) { "#{tenant_string}/#{volume_backups}" }
