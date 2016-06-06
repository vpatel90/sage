class DashboardController < ApplicationController
  def home
    @latest_box = SampleBox.last
    @box_items = @latest_box.items
  end

  def checkout
    if current_user
      @cart = current_user.carts.last
    else
      flash[:alert] = "You must sign in to do that"
      redirect_to new_user_session_path
    end
  end

  def add_to_cart
    binding.pry
  end
end
