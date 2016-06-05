class User < ActiveRecord::Base
  has_many :contacts
  has_secure_password
  validates :email, presence:true, uniqueness: true
end
