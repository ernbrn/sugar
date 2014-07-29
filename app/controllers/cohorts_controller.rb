class CohortsController < ApplicationController
  before_action :find_cohort, only: [:show, :update, :destroy]


  def index
    @cohorts = Cohort.all
  end

  def ruby
    @ror = Cohort.first
    @ror
  end

  def fe
    @fe = Cohort.second
   @fe
  end

  def show
   @cohort
  end

  def create
    @cohort = Cohort.new(cohort_params)
    @cohort.save
    @cohort
  end

  def update
    @cohort.update(cohort_params)
    @cohort
  end

  def destroy
    @cohort.delete
   @cohort
  end

  private

  def find_cohort
    @cohort = Cohort.find(params[:id])
  end

  def cohort_params
    params.require(:cohort).permit!
  end
end