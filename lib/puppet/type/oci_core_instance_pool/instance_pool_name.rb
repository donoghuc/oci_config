# frozen_string_literal: true

#
# See the file "LICENSE" for the full license governing this code.
#
# This code is generated by the type generator. Modification will be overwritten
#
newparam(File.basename(__FILE__, '.rb').to_sym) do
  include EasyType

  desc <<-DESC
  The name of the instance_pool.

  DESC

  isnamevar

  data_type('String')
end
