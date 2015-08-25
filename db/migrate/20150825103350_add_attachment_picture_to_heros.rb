class AddAttachmentPictureToHeros < ActiveRecord::Migration
  def self.up
    change_table :heros do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :heros, :picture
  end
end
