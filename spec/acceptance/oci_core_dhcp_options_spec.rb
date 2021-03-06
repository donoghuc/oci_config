require_relative '../spec_helper_acceptance'
require_relative '../support/shared_acceptance_specs'
# rubocop: disable Style/AlignParameters

describe 'oci_core_dhcp_options' do
  include_context 'setup'
  test_name = unique_test_name

  let(:resource_name) { "acceptance_tests/test_dhcp_option_#{test_name}" }

  before(:all) do
    manifest = <<-EOD
    oci_core_vcn { 'enterprisemodules (root)/acceptance_tests/vcn_#{test_name}':
      ensure        => 'present',
      cidr_block    => '10.0.0.0/16',
      freeform_tags => {'test' => 'yes'},
    }
    EOD
    apply_manifest(manifest, :expect_changes => true)
  end

  after(:all) do
    manifest = <<-EOD
    oci_core_vcn { 'enterprisemodules (root)/acceptance_tests/vcn_#{test_name}':
      ensure => 'absent',
    }
    EOD
    apply_manifest(manifest, :expect_changes => true)
  end


  context 'dhcp option does not exists' do
    it 'should add the dhcp option idempotent' do
      manifest = <<-EOD
        oci_core_dhcp_options { 'enterprisemodules (root)/#{resource_name}':
          ensure  => 'present',
          vcn     => 'acceptance_tests/vcn_#{test_name}',
          options => [
            {
              'type' => 'DomainNameServer',
              'custom_dns_servers' => [],
              'server_type' => 'VcnLocalPlusInternet'
            },
            {
              'type' => 'SearchDomain',
              'search_domain_names' => ['vcn.oraclevcn.com']
            }
          ],
        }
      EOD
      apply_manifest(manifest, :expect_changes => true)
      apply_manifest(manifest, :catch_changes => true)
    end
  end

  context "dhcp option exists" do
    it "should change the dhcp option idempotent" do
      manifest = <<-EOD
        oci_core_dhcp_options { 'enterprisemodules (root)/#{resource_name}':
          ensure  => 'present',
          vcn     => 'acceptance_tests/vcn_#{test_name}',
          options => [
            {
              'type' => 'DomainNameServer',
              'custom_dns_servers' => [],
              'server_type' => 'VcnLocalPlusInternet'
            },
            {
              'type' => 'SearchDomain',
              'search_domain_names' => ['vvcn.oraclevcn.com']
            }
          ],
        }
      EOD
      apply_manifest(manifest, :expect_changes => true)
      apply_manifest(manifest, :catch_changes => true)
    end

    it "should remove the dhcp option idempotent" do
      manifest = <<-EOD
        oci_core_dhcp_options { 'enterprisemodules (root)/#{resource_name}':
          ensure => 'absent',
        }
      EOD
      apply_manifest(manifest, :expect_changes => true)
      apply_manifest(manifest, :catch_changes => true)
    end
  end
end
