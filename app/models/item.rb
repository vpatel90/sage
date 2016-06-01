class Item < ActiveRecord::Base
  has_many :carts
  has_many :sample_boxes
end
