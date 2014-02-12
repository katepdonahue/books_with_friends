class Book < ActiveRecord::Base
  attr_accessible :title, :isbn, :genre, :author_id, :year

  has_many :book_users
  has_many :users, :through => :book_users
  belongs_to :author
  has_many :reviews

  accepts_nested_attributes_for :book_users

  def get_info
    hash = {}
    hash[:id] = self.id
    hash[:title] = self.title
    hash[:genre] = self.genre
    hash[:author] = "#{self.author.first_name} #{self.author.last_name}"
    hash[:year] = self.year
    hash[:isbn] = self.isbn
    # hash[:user_id] = self.use
  end
  
end