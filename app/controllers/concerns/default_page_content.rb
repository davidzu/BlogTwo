module DefaultPageContent
 extend ActiveSupport::Concern

  included  do
  		before_action :set_page_defaults
  end
  	
  def set_page_defaults
		@page_title = "My Personal Page"
		@seo_keywords = "David Zúñiga Carmona Blog Project manager Management rails ruby tech lead"
	end 
end