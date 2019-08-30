class Remove2FieldsFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :count
    remove_column :books, :cover_type
  end
end
