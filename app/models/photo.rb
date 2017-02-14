class Photo < ActiveRecord::Base
	belongs_to :event

	validates :path, presence: true

	mount_uploader :path, PhotoUploader
	

end
