class BandsController < ApplicationController

  def index
    Band.all
  end

end
