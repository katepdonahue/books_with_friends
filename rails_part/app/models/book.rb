class Book < ActiveRecord::Base
  has_many :book_users
  has_many :users, :through => :book_users
  belongs_to :author
  has_many :reviews
  
end