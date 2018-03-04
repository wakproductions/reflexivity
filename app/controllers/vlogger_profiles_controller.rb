class VloggerProfilesController < ApplicationController
  before_action :set_vlogger_profile, only: [:show, :edit, :update, :destroy]

  # GET /vlogger_profiles
  def index
    @vlogger_profiles = VloggerProfile.all
  end

  # GET /vlogger_profiles/1
  def show
  end

  # GET /vlogger_profiles/new
  def new
    @vlogger_profile = VloggerProfile.new
  end

  # GET /vlogger_profiles/1/edit
  def edit
  end

  # POST /vlogger_profiles
  def create
    @vlogger_profile = VloggerProfile.new(vlogger_profile_params)

    if @vlogger_profile.save
      redirect_to @vlogger_profile, notice: 'Scholar profile was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /vlogger_profiles/1
  def update
    if @vlogger_profile.update(vlogger_profile_params)
      redirect_to @vlogger_profile, notice: 'Scholar profile was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /vlogger_profiles/1
  def destroy
    @vlogger_profile.destroy
    redirect_to vlogger_profiles_url, notice: 'Scholar profile was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vlogger_profile
      @vlogger_profile = VloggerProfile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vlogger_profile_params
      params.fetch(:vlogger_profile, {})
    end
end
