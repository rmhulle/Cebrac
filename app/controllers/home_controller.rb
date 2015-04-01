class HomeController < ApplicationController


  def index
    @users = User.all
  end

  def minor
  	@identity = Identity.find(88)
  end

  def modelo
  end
end
