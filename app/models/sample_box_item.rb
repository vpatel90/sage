class SampleBoxItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :sample_box
end
