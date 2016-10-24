class UserSubjectsController < ApplicationController
  before_action :set_user_subject, only: [:show, :update, :destroy]

  # GET /user_subjects
  # GET /user_subjects.json
  def index
    @user_subjects = UserSubject.all
  end

  # GET /user_subjects/1
  # GET /user_subjects/1.json
  def show
  end

  def show_by_subject_id
    @user_subject = UserSubject.find_by_subject_id(params[:subject_id])
  end

  # POST /user_subjects
  # POST /user_subjects.json
  def create
    @user_subject = UserSubject.new(user_subject_params)
    if @user_subject.save
      render :show, status: :created, location: @user_subject
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

  def destroy_by_subject_id
    @user_subject = UserSubject.find_by_subject_id(params[:subject_id])
    @user_subject.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_subject
      @user_subject = UserSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_subject_params
      params.fetch(:user_subject, {}).permit(:user_id,:subject_id,:semester)
    end
end
