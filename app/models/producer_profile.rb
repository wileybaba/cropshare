class ProducerProfile < ApplicationRecord

  attr_reader :user

  def init(user)
    @user = user
  end

  def farm_image
  end

  def farm_bio
  end

  def farm_location
    # class Location < ActiveRecord::Base
    #   acts_as_mappable :default_units => :miles,
    #                    :default_formula => :sphere,
    #                    :distance_field_name => :distance,
    #                    :lat_column_name => :lat,
    #                    :lng_column_name => :lng
    # end
  end

  def farm_practices
    # organic? xerxes bug certified? #biodynamic? regenerative?
  end

end
