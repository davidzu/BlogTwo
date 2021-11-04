class ApplicationController < ActionController::Base
	include DeviseWhitelist
	include SetSource

	def current_user
		super || OpenStruct.new(name: "Guest User")
	end
end
