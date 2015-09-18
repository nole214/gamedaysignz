class AddAttachmentImageToSigns < ActiveRecord::Migration
  def self.up
    change_table :signs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :signs, :image
  end
end
