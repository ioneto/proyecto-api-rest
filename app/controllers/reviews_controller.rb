class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
   @review = Review.find(params[:id])
  end

  def show_by_user_id
    if params[:id]
      @review = Review.joins(:user_subject).where(:user_subjects => {:user_id => params[:user_id]}).find(params[:id])
    else
      @reviews = Review.joins(:user_subject).where(:user_subjects => {:user_id => params[:user_id]})
    end
  end

  def show_by_user_id_and_subject_id
    @reviews = Review.joins(:user_subject).where(:user_subjects => {:user_id => params[:user_id], :subject_id => params[:subject_id]})
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)

    if @review.save
      render :show, status: :created, location: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    if @review.update(review_params)
      render :show, status: :ok, location: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.fetch(:review, {}).permit(:user_subject_id,:title,:primary_color,:secondary_color,:start_date,:end_date,:score)
    end
end
