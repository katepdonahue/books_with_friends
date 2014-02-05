class Books < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :genre
      t.integer :author_id
    end
  end
end
