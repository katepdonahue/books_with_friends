class User < ActiveRecord::Base
  attr_accessible :username, :email

  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :book_users
  has_many :books, :through => :book_users
  has_many :authors, :through => :books
  has_many :reviews

end