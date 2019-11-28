class JointCardItemsController < ApplicationController
    before_action :set_cart, only: [:create, :destroy]
    
    def index
@cart = params(session[:id])
@item = params(item[:id])

    end
    def show
        

    end
    
        def create
            # Find associated product and current cart
            chosen_item = Item.find(params[:item_id])
            @item = chosen_item
            current_cart = @current_cart
            @joint_card_item = JointCardItem.new
            @joint_card_item.cart = current_cart
            @joint_card_item.item = chosen_item
            if @joint_card_item.save
              redirect_to carts_path
            else
              redirect_to root_path
            end
        end
    
end
