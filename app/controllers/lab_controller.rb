class LabController < ApplicationController
  before_filter :authenticate_core_user!

  def batches
    $current_menu = 'LAB'
    $current_submenu = 'BATCHES'
    @app_batches = AppBatch.find_all_by_hidden(false, :order => 'batch_date')
  end
  
end
