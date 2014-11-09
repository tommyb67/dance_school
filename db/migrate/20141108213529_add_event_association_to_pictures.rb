class AddEventAssociationToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :event_id, :integer, index: true
  end
end
