class CoreRole < ActiveRecord::Base
    has_many :core_privileges, :foreign_key => 'role_id'
    has_many :core_delegations, :foreign_key => 'role_id'
end

# == Schema Information
#
# Table name: core_roles
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

