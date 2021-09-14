class Review < ApplicationRecord
	validates_presence_of :title, :content, :main_image, :thumb_image

	has_and_belongs_to_many :tags
end
