class CoreModule < ActiveRecord::Base
    validates :name, :presence => true;
    validates :description, :presence => true;
    
    has_many :core_actions, :foreign_key => 'module_id', :order => 'name ASC'
end

# == Schema Information
#
# Table name: core_modules
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :string(255)
#  ord         :integer
#  created_at  :datetime
#  updated_at  :datetime
#

