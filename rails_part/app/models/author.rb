class Author < ActiveRecord::Base
  has_many :books
  has_many :reviews, :through => :books
  has_many :book_users, :through => :books
  has_many :users, :through => :book_users
end