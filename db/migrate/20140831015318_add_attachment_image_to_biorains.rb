class AddAttachmentImageToBiorains < ActiveRecord::Migration
  def self.up
    change_table :biorains do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :biorains, :image
  end
end
