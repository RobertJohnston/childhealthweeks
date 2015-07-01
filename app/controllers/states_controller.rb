class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
    @state = State.find(params[:id])

    @population_reports = @state.population_reports.all
    @stock_reports = @state.stock_reports.all
    @program_reports = @state.program_reports.all
  end



end
