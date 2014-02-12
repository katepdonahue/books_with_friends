require 'spec_helper'

describe Book do

  describe "#get_info" do
    book = Book.find(1)

    it "should know everything" do
      hash = {
        :id => 1,
        :title => "The Best Book",
        :genre => "happy",
        :author => "Tillow Brown",
        :year => 2009,
        :isbn => "124562468",
        :users => [{:id => 1, :username =>"Kate"}],
        :reviews => [{:subject => "cool",
                      :body => "It was the best book I've ever read.", 
                      :user_id => 2,
                      :username => "Jon"}]
      }
      expect(book.get_info).to eq(hash)
    end

  end

end