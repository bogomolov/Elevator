module BasisesHelper
  def current_user
    if current_core_user.nil?
      CoreUser.new
    else
      current_core_user
    end
  end
end
