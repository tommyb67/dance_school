class RemoveColumnsFromLessons < ActiveRecord::Migration
  def change
    remove_column :lessons, :monday, :string
    remove_column :lessons, :tuesday, :string
    remove_column :lessons, :wednesday, :string
    remove_column :lessons, :thursday, :string
    remove_column :lessons, :friday, :string
    remove_column :lessons, :saturday, :string
    remove_column :lessons, :sunday, :string
  end
end
