class Book < ActiveRecord::Base
  attr_accessible :title, :isbn, :genre, :author_id, :year, :s_thumb, :thumb, :description

  has_many :book_users
  has_many :users, :through => :book_users
  belongs_to :author
  has_many :reviews

  accepts_nested_attributes_for :book_users

  def get_info
    response = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=isbn:#{self.isbn}")
    self.title = response["items"][0]["volumeInfo"]["title"]
    self.genre = response["items"][0]["volumeInfo"]["categories"][0]
    self.year = response["items"][0]["volumeInfo"]["publishedDate"][0..3].to_i
    self.thumb = response["items"][0]["volumeInfo"]["imageLinks"]["smallThumbnail"]
    self.l_thumb = response["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
    self.description = response["items"][0]["volumeInfo"]["description"]
    author = Author.new
    name_array = response["items"][0]["volumeInfo"]["authors"][0].split
    author.first_name = name_array[0..-2].join(" ")
    author.last_name = name_array[-1]
    author.save
    self.author_id = author.id
    self.save
  end
  
end