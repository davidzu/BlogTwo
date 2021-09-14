class Review < ApplicationRecord
	validates_presence_of :title, :content, :main_image, :thumb_image
end
