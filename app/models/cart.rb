class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :cart_items
  has_many :sample_boxes, through: :cart_items, source: :cart_itemable, source_type: "SampleBox"
  has_many :items, through: :cart_items, source: :cart_itemable, source_type: "Item"

end
