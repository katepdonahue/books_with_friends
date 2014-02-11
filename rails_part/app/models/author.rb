class Author < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  has_many :books
  has_many :reviews, :through => :books
  has_many :book_users, :through => :books
  has_many :users, :through => :book_users
end