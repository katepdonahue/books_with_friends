class User < ActiveRecord::Base
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :book_users
  has_many :books, :through => :book_users
  has_many :authors, :through => :books
  has_many :reviews

end