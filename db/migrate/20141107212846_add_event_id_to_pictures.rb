class AddEventIdToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :event_id, :integer
    add_index :pictures, :event_id
  end
end
