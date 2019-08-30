class AddReferenceCommonUserInAddress < ActiveRecord::Migration[5.2]
  def change
    add_reference :addresses, :common_user, foreign_key: true
  end
end
