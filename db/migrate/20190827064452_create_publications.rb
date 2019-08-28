class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.string :name
      t.string :email
      t.string :mobile_number
      t.timestamps
    end
  end
end
