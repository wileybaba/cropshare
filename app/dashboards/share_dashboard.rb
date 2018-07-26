require "administrate/base_dashboard"

class ShareDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    subscriptions: Field::HasMany,
    locations: Field::Number,
    user: Field::BelongsTo,
    id: Field::Number,
    contains: Field::Text,
    start_date: Field::DateTime,
    regularity: Field::String,
    availability: Field::Text,
    cost: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    name: Field::String,
    locations: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :subscriptions,
    :locations,
    :user,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :subscriptions,
    :locations,
    :user,
    :id,
    :contains,
    :start_date,
    :regularity,
    :availability,
    :cost,
    :created_at,
    :updated_at,
    :name,
    :locations,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :subscriptions,
    :locations,
    :user,
    :contains,
    :start_date,
    :regularity,
    :availability,
    :cost,
    :name,
    :locations,
  ].freeze

  # Overwrite this method to customize how shares are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(share)
  #   "Share ##{share.id}"
  # end
end
