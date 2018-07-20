class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :edit, :update]

  def index
    @users = User.all 
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @shares = @user.shares
  end

  def user_params
    params.require(:share) if params[:share].present?
  end
