class RatingsController < ApplicationController
  before_action :set_ratings
  before_action :set_rating, only: [:show, :edit, :update, :destroy]

  # GET listings/1/ratings
  def index
    @ratings = @listing.ratings
  end

  # GET listings/1/ratings/1
  def show
  end

  # GET listings/1/ratings/new
  def new
    @rating = @listing.ratings.build
  end

  # GET listings/1/ratings/1/edit
  def edit
  end

  # POST listings/1/ratings
  def create
    @rating = @listing.ratings.build(rating_params)

    if @rating.save
      redirect_to([@rating.listing, @rating], notice: 'Rating was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT listings/1/ratings/1
  def update
    if @rating.update_attributes(rating_params)
      redirect_to([@rating.listing, @rating], notice: 'Rating was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE listings/1/ratings/1
  def destroy
    @rating.destroy

    redirect_to listing_ratings_url(@listing)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ratings
      @listing = Listing.find(params[:listing_id])
    end

    def set_rating
      @rating = @listing.ratings.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rating_params
      params.require(:rating).permit(:body)
    end
end
