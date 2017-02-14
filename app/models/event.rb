class Event < ActiveRecord::Base
	has_many :photos

	validates :title, presence: true

	scope :completed, ->{ where(completed: false) }
	scope :uncompleted, ->{ where(completed: true) }
	scope :order_desc, ->{ order('datetime DESC') }

	def select_three_random_photos
		array = []
		return [] if photos.empty?
		array << photos.sample
		array << photos.sample
		array << photos.sample
		array
	end

end
