class CartItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :cart_itemable, polymorphic: true

end
