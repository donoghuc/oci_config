# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
require "#{File.dirname(__FILE__)}/../puppet_x/enterprisemodules/oci/define_fact"

oci_define_fact(:oci_core_public_ip, %w[ip_address time_created])
oci_define_fact(:oci_database_autonomous_database, %w[time_created db_name service_console_url connection_strings connection_urls db_version])
