class SessionsController < ApplicationController
  def new
  end

  def create
    band = Band.find_by(email: session_params[:email])

    if band && band.authenticate(session_params[:password])
      session[:band_id] = band.id
      flash[:notice] = "Successfully logged in!!!"
      redirect_to root_url
    else
      # raise flash.inspect
      flash.now[:notice] = "Invalid credentials!"
      render :new
    end
  end

  def destroy
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
