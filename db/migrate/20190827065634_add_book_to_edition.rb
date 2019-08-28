class AddBookToEdition < ActiveRecord::Migration[5.2]
  def change
    add_reference :editions, :book, foreign_key: true
  end
end
