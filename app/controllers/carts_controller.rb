class CartsController < ApplicationController
before_action :require_login
 
  
  def index

  end
  

  def show
    @cart = @current_cart

   
  end
 
 

  def destroy
    
    #@joint_card_item = JointCardItem.find(params[:id])
    #@joint_card_item.destroy
    redirect_to cart_path
  end

  private
  def require_login
    unless authenticate_user!
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_login_url # halts request cycle
    end
  end
  

end
