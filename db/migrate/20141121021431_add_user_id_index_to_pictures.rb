class AddUserIdIndexToPictures < ActiveRecord::Migration
  def change
    add_index :pictures, :user_id
  end
end
