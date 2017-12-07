class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #code from https://richonrails.com/articles/building-a-shopping-cart-in-ruby-on-rails
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
private
  def current_user
    User.where(id: session[:user_id]).first
  end
  helper_method :current_user
end
