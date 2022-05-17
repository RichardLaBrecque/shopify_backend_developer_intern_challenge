class ItemsController < ApplicationController
  def new
  end
  def create
    Item.create(name: params[:name], description: params[:description])
    redirect_to '/items'
  end

  def index
    @items = Item.all
  end

  def edit
    @item = Item.find(params[:id])
  end
  def update
    @item = Item.find(params[:id])
    @item.update(name: params[:item][:name], description: params[:item][:description])
    redirect_to "/items/#{@item.id}"
  end
end
