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

  private

  def find_semester
    @semester = Semester.find(params[:id])
  end
end