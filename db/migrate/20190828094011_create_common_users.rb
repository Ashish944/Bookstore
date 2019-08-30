class CreateCommonUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :common_users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :mobile_no
      t.string :user_type
      t.timestamps
    end
  end
end
