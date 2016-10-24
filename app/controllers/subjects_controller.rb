class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :update, :destroy]

  # GET /subjects
  # GET /subjects.json
  def index
    @subjects = Subject.all
  end

  # GET /subjects/1
  # GET /subjects/1.json
  def show
  end

  def show_by_user_id
    if params[:subject_id]
      @subjects = Subject.joins(:user_subjects).where(:user_subjects => { :user_id => params[:user_id], :subject_id => params[:subject_id] } )
    else
      @subjects = Subject.joins(:user_subjects).where(:user_subjects => { :user_id => params[:user_id] } )
    end
  end

  # POST /subjects
  # POST /subjects.json
  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      render :show, status: :created, location: @subject
    else
      render json: @subject.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subjects/1
  # PATCH/PUT /subjects/1.json
  def update
    if @subject.update(subject_params)
      render :show, status: :ok, location: @subject
    else
      render json: @subject.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.json
  def destroy
    @subject.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @subject = Subject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_params
      params.fetch(:subject, {}).permit(:name,:initials,:credits)
    end
end
