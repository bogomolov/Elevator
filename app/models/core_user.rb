class CoreUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :recoverable, :validatable, :timeoutable and :omniauthable
  devise :registerable, :database_authenticatable, 
         :rememberable, :trackable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :fullname, :admin, :password, :password_confirmation, :remember_me
    has_many :core_delegations, :foreign_key => 'role_id'
  
  validates :username, :presence => true,
                       :length   => { :maximum =>  50, :minimum => 4 },
                       :uniqueness => { :case_sensitive => false }
  validates :fullname, :presence => true,
                       :length   => { :maximum => 100, :minimum => 4 },
                       :uniqueness => { :case_sensitive => false }
  validates :password, :presence => true,
                       :length   => { :maximum =>  30, :minimum => 4 }
  validates :password_confirmation, :presence => true
end

# == Schema Information
#
# Table name: core_users
#
#  id                     :integer         not null, primary key
#  username               :string(255)
#  fullname               :string(255)
#  admin                  :string(1)
#  password               :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(255)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  failed_attempts        :integer         default(0)
#  unlock_token           :string(255)
#  locked_at              :datetime
#  authentication_token   :string(255)
#

