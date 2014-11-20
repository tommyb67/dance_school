class AddUserIdToDancers < ActiveRecord::Migration
  def change
    add_column :dancers, :user_id, :integer
    add_index :dancers, :user_id
  end
end
