class ConfProperty < ActiveRecord::Base
end

# == Schema Information
#
# Table name: conf_properties
#
#  id         :integer         not null, primary key
#  section    :string(255)
#  param      :string(255)
#  value      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

