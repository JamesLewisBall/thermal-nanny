class HomeController < ApplicationController
  def index
  end
  def mysites
    @sites = Site.all
  end
end
