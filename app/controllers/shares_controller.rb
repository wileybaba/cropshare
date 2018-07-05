class SharesController < ApplicationController

# before_action :set_share
skip_before_action :verify_authenticity_token

  def index
  end 

  def create
    @share = Share.create(share_params)
    if @share.save
      redirect_to @share
    else
      render 'new'
    end
  end

#   def edit
#     @share = Share.find(params[:id])
#   end
#
#   def update
#     @share = Share.find(params[:id])
#     @share.update(share_params)
#     redirect_to @share
#   end
#
#   def destroy
#     @share = Share.find(params[:id])
#     @share.destroy
#     redirect_to :share
#   end
#
private
  def share_params
    params.permit(:name, :contains, :start_date, :regularity, :availability, :cost)
  end

  # def set_share
  #   @share = Share.find(params[:share_id])
  # end

end
