class AddPolyBehaviourToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_index :feedbacks, [:seller_id, :seller_type] 
    #Ex:- add_index("admin_users", "username")
  end
end
