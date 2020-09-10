class ItemsController < ApplicationController
  def index
    @items = Product.includes(:images).order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  private
  def item_params
    params.requite(:item).permit(:name)
  end
  
end
