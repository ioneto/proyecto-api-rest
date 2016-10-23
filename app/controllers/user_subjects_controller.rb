class UserSubjectsController < ApplicationController
  before_action :set_user_subject, only: [:show, :update, :destroy]

  # GET /user_subjects
  # GET /user_subjects.json
  def index
    @user = User.find(params[:user_id])
    #@user_subjects = @user.user_subjects
  end

  # GET /user_subjects/1
  # GET /user_subjects/1.json
  def show
    @user = UserSubject.find(params[:id])
  end

  # POST /user_subjects
  # POST /user_subjects.json
  def create
    @user = User.find(params[:user_id])
    @user_subject = UserSubject.new(user_subject_params)
    @user_subject.user_id = @user.id

    if @user_subject.save
      render 'users/show', status: :created, location: @user
    else
      render json: @user_subject.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_subjects/1
  # PATCH/PUT /user_subjects/1.json
  def update
    if @user_subject.update(user_subject_params)
      render :show, status: :ok, location: @user_subject
    else
      render json: @user_subject.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_subjects/1
  # DELETE /user_subjects/1.json
  def destroy
    @user_subject.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_subject
      @user_subject = UserSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_subject_params
      params.require(:user_subject).permit(:user_id, :subject_id, :semester)
    end
end
