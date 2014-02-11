class Review < ActiveRecord::Base
  attr_accessible :subject, :body, :user_id, :book_id

  belongs_to :book
  belongs_to :user
end