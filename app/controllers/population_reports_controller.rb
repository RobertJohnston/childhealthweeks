class PopulationReportsController < ApplicationController

  before_action :find_site

  def index
    @population_reports = @site.population_reports.all
  end

  def show
    @population_report = @site.population_reports.find(:id)
  end

  private

  def find_site
    @site = Site.find(params[:site_id])
  end
end
