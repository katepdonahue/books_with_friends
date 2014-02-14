class BookImages < ActiveRecord::Migration
  def change
    add_column :books, :thumb, :string
    add_column :books, :l_thumb, :string
  end
end
