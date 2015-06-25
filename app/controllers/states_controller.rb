class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show
    @state = State.find(params[:id])
    @sites = @state.sites.all
    @districts = @state.districts.all
  end
end
