class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
    @state = State.find(params[:id])

    @stock_reports = @state.stock_reports.all
  end



end
