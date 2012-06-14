class AppAction < ActiveRecord::Base
  belongs_to :app_module
  
  validates :name, :length => { :maximum => 20 }
  validates :description, :length => { :maximum => 200 }
end
