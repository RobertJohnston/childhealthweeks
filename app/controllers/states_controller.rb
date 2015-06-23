class StatesController < ApplicationController

  def index
    @States = State.all
  end

  def show
    @state = State.find(params[:id])
  end
end
