class AddUserIdToBiorains < ActiveRecord::Migration
  def change
    add_column :biorains, :user_id, :integer
    add_index :biorains, :user_id
  end
end
