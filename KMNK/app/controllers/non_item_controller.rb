class NonItemController < ApplicationController
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
  
  def cart1
  end

  def cart2
  end
end
