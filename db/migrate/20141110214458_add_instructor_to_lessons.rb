class AddInstructorToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :instructor, :string
  end
end
