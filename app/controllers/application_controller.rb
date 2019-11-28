class ApplicationController < ActionController::Base
    before_action :set_cart
    private
    def set_cart
      @current_cart = Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
      @current_cart = Cart.create(user: current_user)
      session[:cart_id] = @current_cart.id
    end
end
