class ManagerController < ApplicationController
    def default
      $current_menu = 'MANAGER'
      $current_submenu = 'DEFAULT'
    end
    
    def suppliers
      $current_menu = 'MANAGER'
      $current_submenu = 'SUPPLIERS'
    end
    
    def contracts
      $current_menu = 'MANAGER'
      $current_submenu = 'CONTRACTS'
      @app_contracts_active = AppContract.find(:all, :conditions => ["start_date<=? and finish_date>=?", Date.today, Date.today])
    end
    
    def seasons
      $current_menu = 'MANAGER'
      $current_submenu = 'SEASONS'
    end
end
