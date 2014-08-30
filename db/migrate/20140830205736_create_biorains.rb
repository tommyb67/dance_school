class CreateBiorains < ActiveRecord::Migration
  def change
    create_table :biorains do |t|
      t.string :description

      t.timestamps
    end
  end
end
