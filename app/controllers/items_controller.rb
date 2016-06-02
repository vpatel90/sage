class ItemsController < ApplicationController
  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  private
  def item_params
    params.require(:sample_box).permit(:name, :description, :pic, :price)
  end
end
