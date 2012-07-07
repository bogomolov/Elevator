class HomeController < ApplicationController
  before_filter :authenticate_core_user!

  def index
  end

end
