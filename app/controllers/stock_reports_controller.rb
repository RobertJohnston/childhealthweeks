class StockReportsController < ApplicationController

# Currently used for State Level Reports

  def index
    @stock_reports = StockReport.all
    @state = State.all
    @sites = Site.all

    # Filters
    @state_filter    = State.all.map{ |s| [ s.state_name, s.id ] }
    @district_filter = District.all.map{ |d| [ d.district_name, d.id ] }

  end

  def show
    @state = State.find(params[:state_id])
    @stock_report = @state.stock_reports.find(params[:id])
  end

  # Pass national, state and district reports to view.

end
