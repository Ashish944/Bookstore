class AddReferenceOfPublicationInEdition < ActiveRecord::Migration[5.2]
  def change
    add_reference :editions, :publication, foreign_key: true
  end
end
