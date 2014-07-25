class StudentsController < ApplicationController
  respond_to :json
  before_action :find_student, only: [:show]


  def index
    @students = Student.all
    respond_with @students
  end

  def show
    respond_with @student
  end

  def create

  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit!
  end


end