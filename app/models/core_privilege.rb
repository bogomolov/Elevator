class CorePrivilege < ActiveRecord::Base
    belongs_to :core_role
    belongs_to :core_action
end

# == Schema Information
#
# Table name: core_privileges
#
#  id         :integer         not null, primary key
#  role_id    :integer
#  action_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

