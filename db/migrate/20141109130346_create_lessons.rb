class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.timestamp :starts_at
      t.timestamp :ends_at
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :sunday

      t.timestamps
    end
  end
end
