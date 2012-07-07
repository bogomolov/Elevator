class AppLaborantController < ApplicationController
  # GET /app_laborants
  def index
    @core_users = CoreUser.find(:all,:order=>"fullname")

    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
