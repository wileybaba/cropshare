class SharesController < ApplicationController

# before_action :set_share
# skip_before_action :verify_authenticity_token
# accepts_nested_attributes_for :locations

  before_action :user_signed_in?, only: [:create, :destroy]

  def index
      @shares = Share.all
    # if params[:store]
    #   @shares = Share.where('store LIKE ?', "%#{params[:store]}%")
    # else
    #   @shares = Share.all
    # end
  end

  def show
    @share = Share.find(params[:id])
  end


  def new
    @share = current_user.shares.new(share_params)
    render :new
  end

  def create
    @share = current_user.shares.build(share_params)
    if @share.save
      flash[:notice] = "Share created!"
      redirect_to @share
    else
      render 'new'
    end
  end

  def edit
    @share = Share.find(params[:id])
  end

  def update
    @share = Share.find(params[:id])
    @share.update(share_params)
    redirect_to @share
  end

  def destroy
    @share = Share.find(params[:id])
    @share.destroy
    redirect_to :share
  end

private

# params.permit :utf8, :_method, :authenticity_token, :commit, :id,

  def share_params

    if params[:share].present?
      params.require(:share).permit(:store, :name, :contains, :start_date, :regularity, :availability, :cost,
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
