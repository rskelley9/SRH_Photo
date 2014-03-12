class HomeController < ApplicationController

  def index
    # render layout:"home_layout"
      render "theme_test", layout:"theme_layout"
  end


end
