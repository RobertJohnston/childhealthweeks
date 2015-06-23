class ProgramReportsController < ApplicationController

  before_action :find_site

  def index
    @program_reports = @site.program_reports.all
  end

  def show
    @program_report = @site.program_reports.find(params[:id])
  end

  private

  def find_site
    @site = Site.find(params[:site_id])
  end

end
