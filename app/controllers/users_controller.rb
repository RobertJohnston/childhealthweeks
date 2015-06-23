class UsersController < ApplicationController
  def index
    @users = @site.users.all
  end

  def show
    @user = @site.users.find(params[:id])
  end

  private

  def find_site
    @site = Site.find(params[:site_id])
  end

end
