class AddPolyBehaviourToFeedback1 < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :sender_id, :integer 
    add_column :feedbacks, :sender_type, :string
    add_reference :feedbacks, polymorphic: true
  end
end
