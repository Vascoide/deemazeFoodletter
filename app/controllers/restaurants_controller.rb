class RestaurantsController < ApplicationController
    def new
        @restaurant = Restaurant.new
    end

    def list
        @restaurants = Restaurant.all
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :date)
    end
end
