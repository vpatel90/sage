class Item < ActiveRecord::Base
  has_many :cart_items, as: :cart_itemable
  has_many :sample_box_items

  validates :name, presence: true
  validates :price, presence: true

end
