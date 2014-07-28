class StudentsController < ApplicationController

  respond_to :json
  before_action :find_student, only: [:show, :update, :destroy]


  def index
    @students = Student.all
    respond_with @students
  end

  def focus
    @focus = Student.all
    respond_with @focus, only: [:focus]
  end

  def ror
    @ror = Student.where(:focus => "Ruby on Rails")
    respond_with @ror
  end

  def fe
    @fe = Student.where(:focus => "Front End")
    respond_with @fe
  end

  def show
    respond_with @student, only: [:name, :email, :bio, :github, :linkdin]
  end

  def create
    @student = Student.new(student_params)
    @student.save
    respond_with @student
  end

  def update
    @student.update(student_params)
    respond_with @student
  end

  def destroy
    @student.destroy
    respond_with @student
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit!
  end

end