class Champion < ActiveRecord::Base

  #We don't need belongs to user because we aren't associating champions with users. (I don't think)

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"] #this is needed for paperclip 4 wich we are using.
end
