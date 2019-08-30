class AddReferencesInFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_reference :feedback_tables, :common_user, foreign_key: true
  end
end
