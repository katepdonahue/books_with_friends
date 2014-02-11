# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([{:username=>"Kate", :email=>"kate@fmail.com"},
            {:username=>"Jon", :email=>"jon@fmail.com"},
            {:username=>"Armando", :email=>"armando@fmail.com"}])

BookUser.create([{:user_id=>1, :book_id=>1},
                 {:user_id=>1, :book_id=>2},
                 {:user_id=>2, :book_id=>3},
                 {:user_id=>2, :book_id=>4},
                 {:user_id=>3, :book_id=>4},
                 {:user_id=>3, :book_id=>5}])

Book.create([{:title=>"The Best Book", :isbn=>"124562468", :genre=>"happy", :author_id=>1, :year=>2009},
             {:title=>"The Second Best Book", :isbn=>"5256245234", :genre=>"slightly happy", :author_id=>1, :year=>2010},
             {:title=>"A Book", :isbn=>"157245725", :genre=>"happy", :author_id=>2, :year=>2001},
             {:title=>"Book Book", :isbn=>"113485634", :genre=>"happy", :author_id=>3, :year=>1975}, 
             {:title=>"Hello Book", :isbn=>"1331735634", :genre=>"slightly happy", :author_id=>4, :year=>2005}])

Author.create([{:first_name=>"Tillow", :last_name=>"Brown"}, 
               {:first_name=>"Fandy", :last_name=>"Door"}, 
               {:first_name=>"Crips", :last_name=>"Pooler"}, 
               {:first_name=>"Lotta", :last_name=>"Fifferson"}])

Review.create([{:subject=>"cool", :body=>"I was the best book I've ever read.", :user_id=>2, :book_id=>1},
               {:subject=>"Goodbye", :body=>"Don't read this book.", :user_id=>3, :book_id=>5}])

Friendship.create([{:friend_id=>2, :user_id=>1},
                   {:friend_id=>1, :user_id=>2},
                   {:friend_id=>1, :user_id=>3},
                   {:friend_id=>3, :user_id=>1}])

