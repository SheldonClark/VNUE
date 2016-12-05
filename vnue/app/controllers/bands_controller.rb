class BandsController < ApplicationController

  def new
  end
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

  private

  def band_params
    params.require(:band).permit(:email, :password)
  end
end
