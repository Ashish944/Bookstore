class AddBookFields < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :category, :string
    add_column :books, :cover_type, :string
    add_column :books, :author_name, :string
    add_column :books, :language, :string
  end
end
