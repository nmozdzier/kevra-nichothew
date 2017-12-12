class NonItemController < ApplicationController

  #before_action :confirm_logged_in

  def home
  end

  def about
  end

  def contact
  end

  def login
  end

  def cart
     def show
     @order_items = current_order.order_items
     end
  end

  private

  #def confirm_logged_in
    #unless session[:user_id]
      #flash[:notice] = "Please log in"
      #redirect_to (login_path)
    #end
  #end
end
