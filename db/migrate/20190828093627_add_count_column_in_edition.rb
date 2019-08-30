class AddCountColumnInEdition < ActiveRecord::Migration[5.2]
  def change
    add_column :editions, :count, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
