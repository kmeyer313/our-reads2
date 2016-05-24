class StudentsController < ApplicationController
  before_action :authenticate!, only: [:show]
  # redirect to new session if not logged in

  before_action :set_student, only: [:show]

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        session[:student_id] = @student.id
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :username, :email, :password, :profile_image)
  end

end
