class WelcomeController < ApplicationController
  def index
    redirect_to pics_path
  end

end
