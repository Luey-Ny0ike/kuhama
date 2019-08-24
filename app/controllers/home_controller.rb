class HomeController < ApplicationController
  def index
      @listings = Listing.order(id: :desc).last(6)
      @listing_categories = ListingCategory.all
  end
  def about_us
      @listings = Listing.last(6)
  end
end
