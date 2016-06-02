class Item < ActiveRecord::Base
  has_many :item_carts
  has_many :sample_box_items

  validates :name, presence: true
  validates :price, presence: true
  
end
