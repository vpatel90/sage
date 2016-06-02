class DashboardController < ApplicationController
  def home
    @latest_box = SampleBox.last
    @box_items = @latest_box.items
  end
end
