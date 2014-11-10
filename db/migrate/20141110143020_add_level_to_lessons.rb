class AddLevelToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :level, :string
  end
end
