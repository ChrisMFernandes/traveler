class HomeController < ApplicationController
  
  def index
    render layout: false
  end

  def dashboard
    render layout: false
  end

end
