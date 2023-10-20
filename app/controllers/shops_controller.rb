class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.includes(:foods).find(params[:id])
    @categories = Category.all
    @foods = @shop.foods
  end
  
  def new
  end

  def create
  end

  def delete
  end
end
