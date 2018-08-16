class RestaurantsController < ApplicationController

  def search
    response = API CALL
    render: JSON response
  end

  private

  def search_params
    require(:restuarant).permit(:location)
  end

end
