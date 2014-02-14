class BookImages < ActiveRecord::Migration
  def change
    add_column :books, :s_thumb, :string
    add_column :books, :thumb, :string
  end
end
