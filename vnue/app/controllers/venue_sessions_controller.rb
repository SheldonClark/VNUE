class VenueSessionsController < ApplicationController
  
  def new
  end

  def create
    venue = Venue.find_by(email: session_params[:email])

    if venue && venue.authenticate(session_params[:password])
      session[:venue_id] = band.id
      flash[:notice] = "Successfully logged in!!!"
      redirect_to root_url
    else
      flash.now[:notice] = "Invalid credentials!"
      render :new
    end
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end 
    
end
