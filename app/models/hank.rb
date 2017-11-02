class Hank < ApplicationRecord
  mount_uploader :file_location, PhotoImageUploader  
  validates_presence_of :name, :date, :note, :file_location  
end
