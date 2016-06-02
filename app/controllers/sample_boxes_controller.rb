class SampleBoxesController < ApplicationController
  def show
  end

  def new
    @sample_box = SampleBox.new
  end

  def create
    @sample_box = SampleBox.new(sample_box_params)
    if @sample_box.save
      create_sample_box_items
      redirect_to root_path
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  def search_items
    @items = Item.where("name ~* '.*#{params[:query]}.*'").limit(5)
    @items = [] if params[:query].empty?
    render json: @items
  end

  private
  def create_sample_box_items
    params[:sample_box][:item_id].each do |id|
      @sample_box.sample_box_items.create(item_id: id)
    end
  end

  def sample_box_params
    params.require(:sample_box).permit(:name, :description, :pic, :price)
  end
end
