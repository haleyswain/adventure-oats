class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      flash[:notice] = "Review successfully added!"
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
  end

  def update
    @review= Review.find(params[:id])
    @product = Product.find(params[:product_id])
    if @review.update(review_params)
      redirect_to product_path(params[:product_id])
    else
      render :edit
    end
  end

  def destroy
    @user = current_user.id
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to root_path
  end

  private
    def review_params
      params.require(:review).permit(:content, :author, product_id: @product.id)
    end
end
