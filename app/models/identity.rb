class Identity < ActiveRecord::Base
 
 has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "90x100" }, :default_url => "/images/:style/missing.png"
 validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
 
 crop_attached_file :avatar, :aspect => "90:100"

 

end
