class HomeController < ApplicationController
  include HomeHelper
  
  def index
    render layout: false
  end

  def dashboard
    @destinations = Destination.order(created_at: :desc).limit(3)
    @image = random_image(@destinations)
    render layout: false
  end

end
