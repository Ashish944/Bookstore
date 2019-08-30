class CreateFeedbackTable < ActiveRecord::Migration[5.2]
  def change
    create_table :feedback_tables do |t|
      t.integer :rating
      t.string :comment
      t.references :sender, polymorphic: true
    end
  end
end
