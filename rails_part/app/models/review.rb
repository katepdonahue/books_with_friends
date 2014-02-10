class Review < ActiveRecord::Base
  belongs_to :book
  belongs_to :user
  belongs_to :author, :through => :book
end