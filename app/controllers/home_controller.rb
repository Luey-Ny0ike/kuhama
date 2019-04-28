class HomeController < ApplicationController
  def index
      @listings = Listing.last(6)
  end
end
