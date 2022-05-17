class WearhouseItemsController < ApplicationController
  def create
    item = Item.find_by(name: params[:item_name])
    wearhouse = Wearhouse.find(params[:id])
    wearhouse.wearhouse_items.create!(item_id: item.id, count: params[:count])
    redirect_to "/wearhouses/#{wearhouse.id}"
  end
end
