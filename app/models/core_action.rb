class CoreAction < ActiveRecord::Base
    validates :name, :presence => true;
    validates :description, :presence => true;

    belongs_to :core_module
    
    has_many :core_privileges, :foreign_key => 'action_id'
    
    def full_name
      "#{CoreModule.find(module_id).description} - #{description}"
    end
end

# == Schema Information
#
# Table name: core_actions
#
#  id          :integer         not null, primary key
#  module_id   :integer
#  name        :string(255)
#  description :string(255)
#  ord         :integer
#  created_at  :datetime
#  updated_at  :datetime
#

