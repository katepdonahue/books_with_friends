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

Book.create([{:title=>"Animal Farm", :isbn=>"0451524667", :genre=>"science fiction", :author_id=>1, :year=>2009},
             {:title=>"The Hobbit", :isbn=>"061815082X", :genre=>"fantasy", :author_id=>2, :year=>2001},
             {:title=>"The Orphan Master's Son", :isbn=>"9780812982626", :genre=>"fiction", :author_id=>3, :year=>2012},
             {:title=>"Ender's Game", :isbn=>"9780765362339", :genre=>"science fiction", :author_id=>4, :year=>2008}, 
             {:title=>"Ender's Shadow", :isbn=>"0812575717", :genre=>"science fiction", :author_id=>4, :year=>2000}])

Author.create([{:first_name=>"George", :last_name=>"Orwell"}, 
               {:first_name=>"J.R.R.", :last_name=>"Tolkien"}, 
               {:first_name=>"Adam", :last_name=>"Johnson"}, 
               {:first_name=>"Orson Scott", :last_name=>"Card"}])

Review.create([{:subject=>"cool", :body=>"It was the best book I've ever read.", :user_id=>2, :book_id=>1},
               {:subject=>"Goodbye", :body=>"Don't read this book.", :user_id=>3, :book_id=>5}])

Friendship.create([{:friend_id=>2, :user_id=>1},
                   {:friend_id=>1, :user_id=>2},
                   {:friend_id=>1, :user_id=>3},
                   {:friend_id=>3, :user_id=>1}])

