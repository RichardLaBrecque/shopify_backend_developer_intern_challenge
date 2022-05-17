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
end
