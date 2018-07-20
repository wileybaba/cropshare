class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :uniqueness => {:case_sensitive => false}
  # validates :first_name, presence: true
  # validates :last_name, presence: true


  enum role: [:user, :producer, :member, :admin]

  # after_initialize do
  #   if self.new_record?
  #     self.role ||= :user
  #   end
  # end


  has_many :shares 

  # has_many :subscriptions
  # has_many :shares, through: :subscriptions





  #
  # if user.admin?
  #   #do something
  # end

  # if user.member?
  #
  # if current_user.try(:admin?)
  #   #do something
  # end

end
