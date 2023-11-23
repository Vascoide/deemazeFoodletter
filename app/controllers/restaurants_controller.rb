class RestaurantsController < ApplicationController
    def new
        @restaurant = Restaurant.new
        2.times { @restaurant.dishes.build }
    end

    def list
        @restaurants = Restaurant.all
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)

        @restaurant.save
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :date, dishes_attributes:[:id, :name, :_destroy])
    end

end
