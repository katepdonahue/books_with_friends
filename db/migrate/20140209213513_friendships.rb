class Friendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :friend_id # friend's user id
      t.integer :user_id # my user id
    end
  end
end
