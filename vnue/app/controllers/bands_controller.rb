class BandsController < ApplicationController

  def new
    @band = Band.new  
  end

  def index
    @bands = Band.all
  end

  def show
    @band = Band.find(params[:id])
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

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    if @band.update(params[:band].permit(:name, :email, :password, :bio))
      redirect_to @band
    else
      render 'edit'
    end
  end

  private

  def band_params
    params.require(:band).permit(:name, :email, :password, :bio)
  end
end
