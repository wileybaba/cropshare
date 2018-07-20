class LocationsController < ApplicationController

skip_before_action :verify_authenticity_token
attr_accessor: :share_id


  def index
    @locations = Location.order('created_at DESC')
    @location = current_user.Location.new(location_params)
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save

  end

  private

  def location_params
    params.require(:locations).permit(:title, :address, :share)
  end



end
