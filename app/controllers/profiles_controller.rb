class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    # byebug
    @listings = Listing.where(id: @profile.id)
    @listing_photo = ListingPhoto.find(@profile.id)
    @reviews = Review.where(user_id: @profile.user.id)

  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    @profile.user = current_user
  
    respond_to do |format|
      if @profile.save
  
        # Get photos directly from the params and save them to the database one by one
        if params[:profile][:photos]
          params[:profile][:photos].each { |photo|
            ProfilePhoto.create!(profile: @profile, photo: photo)
          }
        end
  
        format.html { redirect_to @profile, notice: 'profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
  
        # Get photos directly from the params and save them to the database one by one
        if params[:profile][:photos]
          params[:profile][:photos].each { |photo|
            ProfilePhoto.create(profile: @profile, photo: photo)
          }
        end
  
        format.html { redirect_to @profile, notice: 'profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      # format.html { redirect_to photos_url, notice: 'Photo was successfully destroyed.' }
      format.html { redirect_to profile_path(@photo.profile_id), notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:user_id, :name, :phone_number, :address, :city, :state, :country_code, :avatar)
    end
end
