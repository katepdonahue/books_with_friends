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
    hash[:users] = []
    self.users.each do |user|
      hash[:users] << {:id => user.id, :username => user.username}
    end
    hash[:reviews] = []
    self.reviews.each do |review|
      hash[:reviews] << {:subject => review.subject,
                         :body => review.body,
                         :user_id => review.user_id,
                         :username => review.user.username
                        }
    end
    hash
  end

  def self.get_all_info(array = Book.all)
  end
  
end