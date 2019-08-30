class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :flat_no
      t.string :address
      t.string :city
      t.string :pincode
      t.string :state
      t.timestamps
    end
  end
end
