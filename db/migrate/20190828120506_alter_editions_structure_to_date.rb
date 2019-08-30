class AlterEditionsStructureToDate < ActiveRecord::Migration[5.2]
  def change
    change_column :editions, :published_date, :date
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
