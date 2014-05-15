class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]
    before_action :check_params, only: [:update, :create]


  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def edit
  end

  def update
    @restaurant.update!(@restaurant_params)

    redirect_to restaurant_path(@restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.create(@restaurant_params)

    redirect_to restaurant_path(restaurant)
  end

  def destroy
    @restaurant.delete
    redirect_to restaurants_path
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def check_params
    @restaurant_params = params.require(:restaurant).permit(:name, :address)
  end


end
