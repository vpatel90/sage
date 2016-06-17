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
    if confirm_item_type
      cart_item = current_user.carts.last.cart_items.create(get_cart_item)
      render json: cart_item
    else
      render json: { message: "Invalid Request" }
    end
  end

  private

  def get_cart_item
    { cart_itemable_type: params[:cart_itemable_type], cart_itemable_id: params[:cart_itemable_id] }
  end

  def confirm_item_type
    params[:cart_itemable_type].constantize.find(params[:cart_itemable_id])
  end
end
