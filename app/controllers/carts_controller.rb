class CartsController < ApplicationController
before_action :require_login
  private
  def require_login
    unless authenticate_user!
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_login_url # halts request cycle
    end
  end
  
  def index
    
  end

end
