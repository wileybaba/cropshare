class Share < ApplicationRecord

  has_many :subscriptions
  has_many :users, through: :subscriptions

  belongs_to :user, polymorphic: true
  validates :user_id, presence: true, allow_nil: true
  has_many :members




end
