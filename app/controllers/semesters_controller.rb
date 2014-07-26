class SemestersController < ApplicationController
  respond_to :json
  before_action :find_semester, only: [:show, :update, :destroy]


  def index
    @semesters = Semester.all
    respond_with @semesters
  end

  def show
    respond_with @semester
  end

  def create
    @semester = Semester.new(semester_params)
    @semester.save
    respond_with @semester
  end

  def update
    @semester.update(semester_params)
    respond_with @semester
  end

  def destroy
    @semester.delete
    respond_with @semester
  end

  private

  def find_semester
    @semester = Semester.find(params[:id])
  end

  def semester_params
    params.require(:semesters).permit!
  end
end