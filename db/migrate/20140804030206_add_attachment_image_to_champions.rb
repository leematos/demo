class AddAttachmentImageToChampions < ActiveRecord::Migration
  def self.up
    change_table :champions do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :champions, :image
  end
end
