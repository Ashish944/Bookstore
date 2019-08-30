class AddReferenceSellerInBranch < ActiveRecord::Migration[5.2]
  def change
    add_reference :branches, :common_user, foreign_key: true
  end
end
