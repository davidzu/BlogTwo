class Review < ApplicationRecord
	has_and_belongs_to_many :tags


	accepts_nested_attributes_for :tags, 
																reject_if: lambda {|attrs| attrs['name'].blank?}

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "http://placehold.it/600x400"
		self.thumb_image ||= "http://placehold.it/300x150"
	end

	validates_presence_of :title, :content, :main_image, :thumb_image

end
