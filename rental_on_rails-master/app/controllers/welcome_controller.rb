class WelcomeController < ApplicationController
  
  def index
  	@typologies = Typology.all
  	if cookies[:tmp_data] != nil
  	@mycart = cookies[:tmp_data].scan( /\d+/ ) # Make the array
  	@mycart.map!{ |s| s.to_i }
  end
  end

  def show

  end
end
