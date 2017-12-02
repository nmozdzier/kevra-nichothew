class Food < ActiveRecord::Base
  has_many :order_items

  default_scope { where(onMenuNow: true) }
end
