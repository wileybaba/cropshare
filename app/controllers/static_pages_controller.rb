class StaticPagesController < ApplicationController

before_action :user_signed_in?, only: [:create, :destroy]

  def home
  end

  def help
  end

  def faqs
  end

  def terms_and_conditions
  end

  def privacy_policy
  end

  def share_policy
  end

  def customer_care
  end

  def press
  end

end
