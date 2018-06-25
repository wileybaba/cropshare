class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  enum role: [:producer, :member, :admin]

  after_initialize do
    if self.new_record?
      self.role ||= :member
    end 
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :uniqueness => {:case_sensitive => false}

  # has_many :shares
  #
  # if user.admin?
  #   #do something
  # end
  #
  # if current_user.try(:admin?)
  #   #do something
  # end

end
