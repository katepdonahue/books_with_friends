class Reviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :subject
      t.text :body
      t.integer :user_id
      t.integer :book_id
    end
  end
end
