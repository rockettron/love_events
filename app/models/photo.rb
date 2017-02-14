class Photo < ActiveRecord::Base
	belongs_to :event

	validates :photo, presence: true

	mount_uploader :photo, PhotoUploader
	

end
