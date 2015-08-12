class SitesController < ApplicationController

  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])

    @stock_reports = @site.stock_reports

    @stock_reports_per_day = @site.stock_reports_per_day
    @stock_comp_rep_vit_red = @site.stock_average_complete_reporting(:vitamin_a_red)
    @stock_comp_rep_vit_blue = @site.stock_average_complete_reporting(:vitamin_a_blue)
    @stock_comp_rep_deworm = @site.stock_average_complete_reporting(:deworming)
    @stock_comp_rep_iron = @site.stock_average_complete_reporting(:iron_folate)

    @program_reports = @site.program_reports

    @program_reports_per_day = @site.program_reports_per_day
    @program_comp_rep_vit_red = @site.program_average_complete_reporting(:vitamin_a_red)
    @program_comp_rep_vit_blue = @site.program_average_complete_reporting(:vitamin_a_blue)
    @program_comp_rep_deworm = @site.program_average_complete_reporting(:deworming)
    @program_comp_rep_iron = @site.program_average_complete_reporting(:iron_folate)

    @total_program_report_rep_vit_red = @site.total_program_report(:vitamin_a_red)
    @total_program_report_rep_vit_blue = @site.total_program_report(:vitamin_a_blue)
    @total_program_report_rep_deworm = @site.total_program_report(:deworming)
    @total_program_report_rep_iron = @site.total_program_report(:iron_folate)

  end
end
