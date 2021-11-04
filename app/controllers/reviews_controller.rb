class ReviewsController < ApplicationController
	def index
		@reviews = Review.all
	end

	def new
		@review = Review.new
    3.times { @review.tags.build }
	end

	def create
    @review = Review.new(review_params)

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

  def update
  	@review = Review.find(params[:id])

    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to reviews_path, notice: "La Reseña ha sido editada correctamente." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def show
  	@review = Review.find(params[:id])
  end

  def destroy
  	@review = Review.find(params[:id])
  	@review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: "La reseña ha sido borrada." }
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :content, tags_attributes: [:name])
  end


end
