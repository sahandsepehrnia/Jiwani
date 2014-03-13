class LocationsController < ActionController::Base
  def index
    @location_list = DealerLocation.all
  end

  def show 
  	@location = DealerLocation.find_by(:id => params[:location_id])	
  end
end
