class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :username, :email

  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :book_users
  has_many :books, :through => :book_users
  has_many :authors, :through => :books
  has_many :reviews

end