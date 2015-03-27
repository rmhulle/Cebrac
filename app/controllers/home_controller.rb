class HomeController < ApplicationController


  def index
    @identities = Identity.all
  end

  def minor
  end

  def modelo
  end
end
