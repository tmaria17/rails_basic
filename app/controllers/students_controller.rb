class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :destroy, :edit, :update]
  def index
    @students= Student.all
  end
  def show
    @student = Student.find(params[:id])
  end
  def new
    @student = Student.new
  end
  def create
    student = Student.new(student_params)
    student.save
    redirect_to students_path
  end


private


  def student_params
    params.require(:student).permit(:name)
  end

  def set_student
    @student = Student.find(params[:id])
  end


end
