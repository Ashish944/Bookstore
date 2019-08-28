class CreateEditions < ActiveRecord::Migration[5.2]
  def change
    create_table :editions do |t|
      t.string :version
      t.datetime :published_date
      t.string :cover_type
      t.integer :no_of_pages
      t.float :price
      t.timestamps
    end
  end
end
