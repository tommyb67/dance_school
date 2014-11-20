class RemoveColumnsFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :type, :string
    remove_column :users, :gender, :string
    remove_column :users, :birthday, :string
    remove_column :users, :parent, :string
  end
end
