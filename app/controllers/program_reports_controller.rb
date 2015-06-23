class ProgramReportsController < ApplicationController
  def index
    @program_reports = ProgramReport.all
  end

  def show
    @program_report = ProgramReport.find(params[:id])
  end
end
