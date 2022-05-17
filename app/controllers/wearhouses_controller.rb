class WearhousesController < ApplicationController
  def new
  end

  def create
    Wearhouse.create(name: params[:name], location: params[:location])
    redirect_to '/wearhouses'
  end

  def index
    @wearhouses = Wearhouse.all
  end
end
