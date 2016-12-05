class BandsController < ApplicationController

  def index
    Band.all
  end

  def create
    @band = Band.new(band_params)

    if @band.save
      session[:band_id] = @band.id
      redirect_to root_url
    else
      render :new
    end
  end
end
