class AdminController < ApplicationController
  before_filter :authenticate_core_user!

  def users
    $current_menu = 'ADMIN'
    $current_submenu = 'USERS'
    @core_users = CoreUser.find(:all, :order => 'fullname')
  end
  
  def delegations
    @core_delegations = CoreDelegation.find(:all, :conditions => ['? between valid_from and valid_till', Date.today()],
                                            :order => [@user_name, @role_name])
    $current_menu = 'ADMIN'
    $current_submenu = 'DELEGATIONS'
  end
  
  def audit
    $current_menu = 'ADMIN'
    $current_submenu = 'AUDIT'
  end
  
  def recyclebin
    $current_menu = 'ADMIN'
    $current_submenu = 'RECYCLEBIN'
  end
  
  def database
    $current_menu = 'ADMIN'
    $current_submenu = 'DATABASE'
  end
end
