class Book < ActiveRecord::Base
  attr_accessible :title, :isbn, :genre, :author_id, :year, :s_thumb, :thumb, :description

  has_many :book_users
  has_many :users, :through => :book_users
  belongs_to :author
  has_many :reviews

  accepts_nested_attributes_for :book_users
  
end