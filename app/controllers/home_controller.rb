class HomeController < ApplicationController
  def index
      @listings = Listing.last(6)
  end
  def about_us
      @listings = Listing.last(6)
  end
end
