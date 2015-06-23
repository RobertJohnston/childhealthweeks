class PopulationReportsController < ApplicationController
  def index
    @population_reports = PopulationReport.all
  end

  def show
    @population_report = PopulationReport.find(params[:id])
  end
end
