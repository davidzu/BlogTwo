class ReviewsController < ApplicationController
	def index
		@reviews = Review.all
	end

	def new
		@review = Review.new
	end

	def create
    @review = Review.new(params.require(:review).permit(:title, :content, :thumb_image))

    respond_to do |format|
      if @review.save
        format.html { redirect_to reviews_path, notice: "La Reseña ha sido creada con éxito" }
      else
        format.html { render :new}
      end
    end
  end

  def edit
  	@review = Review.find(params[:id])
  end
end
