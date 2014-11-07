class RenamePicturesToPictures < ActiveRecord::Migration
  def change
    rename_table :biorains, :pictures
  end
end
