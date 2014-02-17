# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create([{:username=>"Kate", :email=>"kate@fmail.com"},
#             {:username=>"Jon", :email=>"jon@fmail.com"},
#             {:username=>"Armando", :email=>"armando@fmail.com"}])

BookUser.create([{:user_id=>1, :book_id=>1},
                 {:user_id=>1, :book_id=>2},
                 {:user_id=>2, :book_id=>3},
                 {:user_id=>2, :book_id=>4},
                 {:user_id=>3, :book_id=>4},
                 {:user_id=>3, :book_id=>5}])

Book.create([{:title=>"Animal Farm", :isbn=>"0451524667", :genre=>"Fiction", :author_id=>1, :year=>2009, :s_thumb=>"http://bks8.books.google.com/books?id=Hgq92oEptwkC&printsec=frontcover&img=1&zoom=5&source=gbs_api", :thumb=>"http://bks8.books.google.com/books?id=Hgq92oEptwkC&printsec=frontcover&img=1&zoom=1&source=gbs_api", :description=>"A new publication of simplified Chinese edition of Animal Farm, the George Orwell classic. In Simplified Chinese. Distributed by Tsai Fong Books, Inc."},
             {:title=>"The Hobbit", :isbn=>"061815082X", :genre=>"Fiction", :author_id=>2, :year=>2001, :s_thumb=>"http://bks5.books.google.com/books?id=X5TPd6nEMB8C&printsec=frontcover&img=1&zoom=5&source=gbs_api", :thumb=>"http://bks5.books.google.com/books?id=X5TPd6nEMB8C&printsec=frontcover&img=1&zoom=1&source=gbs_api", :description=>"Chronicles the adventures of Bilbo Baggins, who embarks on a quest to reclaim stolen treasure from the dragon Smaug, along with his dwarve companions and the wizard Gandalf, and unwittingly returns to the Shire with a Ring of Power."},
             {:title=>"The Orphan Master's Son", :isbn=>"9780812982626", :genre=>"Fiction", :author_id=>3, :year=>2012, :s_thumb=>"http://bks7.books.google.com/books?id=RP6nBwYd8z0C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", :thumb=>"http://bks7.books.google.com/books?id=RP6nBwYd8z0C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api", :description=>"The son of an influential father who runs an orphan work camp, Pak Jun Do rises to prominence using instinctive talents and eventually becomes a professional kidnapper and romantic rival to Kim Jong Il."},
             {:title=>"Ender's Game", :isbn=>"9780765362339", :genre=>"science fiction", :author_id=>4, :year=>2008, :s_thumb=>"http://bks9.books.google.com/books?id=7Sl5BeijDHUC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api", :thumb=>"http://bks9.books.google.com/books?id=7Sl5BeijDHUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}, 
             {:title=>"Ender's Shadow", :isbn=>"0812575717", :genre=>"science fiction", :author_id=>4, :year=>2000, :s_thumb=>"http://bks7.books.google.com/books?id=Zvh2oyYNSokC&printsec=frontcover&img=1&zoom=5&source=gbs_api", :thumb=>"http://bks7.books.google.com/books?id=Zvh2oyYNSokC&printsec=frontcover&img=1&zoom=1&source=gbs_api", :description=>"The novel that launched the bestselling Ender's Shadow series. The human race is at War with the \"Buggers,\" an insect-like alien race. As Earth prepares to defend itself from total destruction at the hands of an inscrutable enemy, all focus is on the development of military geniuses who can fight such a war, and win. The long distances of interstellar space have given hope to the defenders of Earth--they have time to train these future commanders up from childhood, forging them into an irresistible force in the high orbital facility called the Battle School. Andrew \"Ender\" Wiggin was not the only child in the Battle School; he was just the best of the best. In Ender's Shadow, Card tells the story of another of those precocious generals, the one they called Bean--the one who became Ender's right hand, part of his team, in the final battle against the Buggers. Bean's past was a battle just to survive. His success brought him to the attention of the Battle School's recruiters, those people scouring the planet for leaders, tacticians, and generals to save Earth from the threat of alien invasion. Bean was sent into orbit, to the Battle School. And there he met Ender...."}])

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

