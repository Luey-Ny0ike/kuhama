class ListingsController < ApplicationController
  before_action :set_listing, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[new edit update destroy]

  # GET /listings
  # GET /listings.json
  def index
    @listings = Listing.filter(params.slice(:rooms, :bathrooms, :size, :min_price, :max_price, :main_category, :listing_category_id))
    @listing_categories = ListingCategory.all
  end

  # GET /listings/1
  # GET /listings/1.json
  def show; end

  # GET /listings/new
  def new
    @listing = current_user.listings.build
  end

  # GET /listings/1/edit
  def edit; end

  # POST /listings
  # POST /listings.json
  def create
    @listing = current_user.listings.build(listing_params)
    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end

      @search_items = params[:listing][:ammenity_ids]
      if @search_items.nil? == true
      else
        @ammenities = Ammenity.find(@search_items)
        @listing.update(ammenities: @ammenities)
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
      @search_items = params[:listing][:ammenity_ids]
      if @search_items.nil? == true
      else
        @ammenities = Ammenity.find(@search_items)
        @listing.update(ammenities: @ammenities)
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_listing
    @listing = Listing.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def listing_params
    params.require(:listing).permit(:asset_name, :main_category, :description, :pricing, :phone_number, :email, :website, :rooms, :bathrooms, :size, :street, :city, :state, :country, :listing_category_id, :user_id, images: [])
  end
end
