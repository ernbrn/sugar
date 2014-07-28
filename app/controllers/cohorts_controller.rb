class CohortsController < ApplicationController
  respond_to :json
  before_action :find_cohort, only: [:show, :update, :destroy]


  def index
    @cohorts = Cohort.all
    respond_with @cohorts
  end

  def years
    @years = Cohort.all
    respond_with @years, only: [:year]
  end

  def show
    respond_with @cohort
  end

  def create
    @cohort = Cohort.new(cohort_params)
    @cohort.save
    respond_with @cohort
  end

  def update
    @cohort.update(cohort_params)
    respond_with @cohort
  end

  def destroy
    @cohort.delete
    respond_with @cohort
  end

  private

  def find_cohort
    @cohort = Cohort.find(params[:id])
  end

  def cohort_params
    params.require(:cohort).permit!
  end
end