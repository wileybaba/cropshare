class StaticPagesController < ApplicationController
  def home
    # skip_before_action :authenticate_user!, :only => [:index]
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
