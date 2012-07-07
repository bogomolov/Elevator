class CoreDelegation < ActiveRecord::Base
    belongs_to :core_role
    belongs_to :core_user
    
    def role_name
      CoreRole.find(role_id).description
    end

    def user_name
      CoreUser.find(user_id).fullname
    end
    
    def valid_from_s
      valid_from.to_s(:ru_date)
    end

    def valid_till_s
      valid_till.to_s(:ru_date)
    end
end

# == Schema Information
#
# Table name: core_delegations
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  role_id    :integer
#  valid_from :date
#  valid_till :date
#  created_at :datetime
#  updated_at :datetime
#

