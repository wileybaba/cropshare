class Share < ApplicationRecord

  has_many :subscriptions
  # has_many :users, through: :subscriptions
  has_many :locations, dependent: :destroy
  accepts_nested_attributes_for :locations,
                                allow_destroy: true,
                                reject_if: proc { |att| att['title'].blank? }


  default_scope -> { order(created_at: :desc) }

  belongs_to :user
  validates :user_id, presence: true
  # has_many :members




end
