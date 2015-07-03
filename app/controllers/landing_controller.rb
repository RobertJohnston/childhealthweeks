class LandingController < ApplicationController
  def home
    @sites = Site.all

    @gps_hash = Gmaps4rails.build_markers(@sites) do |site, marker|
    marker.lat site.latitude
    marker.lng site.longitude
    end

    # byebug

  end
end
