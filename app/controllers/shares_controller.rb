class SharesController < ApplicationController

# before_action :set_share
# skip_before_action :verify_authenticity_token
# accepts_nested_attributes_for :locations

  def index
    @shares = Share.all
  end

  def show
  end


  # def new
  #   @share = current_user.shares.new
  #   render 'shares/new'
  # end

  def create

    @share = current_user.shares.new(share_params)
    render 'shares/new'
    if @share.save
      flash[:notice] = "Share created!"
      render 'static_pages/home'
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

# params.permit :utf8, :_method, :authenticity_token, :commit, :id,

  def share_params

    if params[:share].present?
      params.require(:share).permit(:name, :contains, :start_date, :regularity, :availability, :cost,
                                    :location_params => location_params)

    end
  end

    # params.require(:share) if params[:share].present?
    # params.permit(:name, :contains, :start_date, :regularity, :availability, :cost, locations: [:title, :address], gridRadios: [:option1, :option2, :option3])



  def location_params
    [:title, :address]
    # params.require(:location).permit(:title, :address)
  end



  # def set_share
  #   @share = Share.find(params[:share_id])
  # end

end
