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
  def show
    
  end

  def update
    add_item
  end
  
  def add_item
    JointCardItem.create(cart_id: self.id, item_id: self.id)
 
    redirect_to cart_path
   end
end
