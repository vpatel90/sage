class SampleBox < ActiveRecord::Base
  has_many :sample_box_items
  has_many :items, through: :sample_box_items
end
