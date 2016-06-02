class ItemsController < ApplicationController
  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "Item Added"
      redirect_to root_path
    else
      flash.now[:error] = "Unable to Save"
      render :new
    end
  end

  def edit
  end

  private
  def item_params
    params.require(:item).permit(:name, :description, :pic, :price)
  end
end
