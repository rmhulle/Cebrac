class IdentitiesController < ApplicationController

  before_action :set_identity, only: [:show, :edit, :update, :destroy, :review]
  # caso não esteja fazendo o upload das photos 
  skip_before_filter :verify_authenticity_token, :only => [:edit, :new, :create, :upload]
  # GET /identities
  # GET /identities.json
  def index
    @identities = Identity.all
  end

  # GET /identities/1
  # GET /identities/1.json
  def show
  end

  # GET /identities/new
  def new
    @identity = Identity.new
  end

  # GET /identities/1/edit
  def edit
  end

  # POST /identities
  # POST /identities.json
  def create
    @identity = Identity.new(identity_params)
    @identity.user_name = current_user.name
    @identity.avatar = File.new(upload_path)
   respond_to do |format|
     if @identity.save
       format.html { render "review", notice: 'Identity was successfully created.' }
       format.json { render action: 'show', status: :created, location: @identity }
       format.js   { }
     else
       format.html { render action: 'new' }
       format.json { render json: @identity.errors, status: :unprocessable_entity }
     end
   end
  end

  def review

  end  

  def print
  end  

  def upload
    File.open(upload_path, 'wb') do |f|
      f.write request.raw_post
    end
    render :text => "ok"
  end

  # PATCH/PUT /identities/1
  # PATCH/PUT /identities/1.json
  def update
    respond_to do |format|
      if @identity.update(identity_params)
        format.html { render action: 'show' }
        format.js {}
      else
        format.html { render action: 'edit' }
        format.json { render json: @identity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /identities/1
  # DELETE /identities/1.json
  def destroy
    @identity.destroy
    respond_to do |format|
      format.html { redirect_to identities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_identity
      @identity = Identity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def identity_params
      params.require(:identity).permit(:name, :enrollment_id, :lecture, :expiration, :campus, :user_name, :user_id, :last_printed, :avatar, :avatar_original_w, :avatar_original_h, :avatar_box_w, :avatar_crop_x, :avatar_crop_y, :avatar_crop_w, :avatar_crop_h, :avatar_aspect, :document)
    end
    def upload_path # is used in upload and create
      File.join(Rails.root, 'tmp','photo.jpg')
    end
end
