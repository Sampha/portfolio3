class PhotoCatagoriesController < ApplicationController
  before_action :set_photo_catagory, only: [:show, :edit, :update, :destroy]

  # GET /photo_catagories
  # GET /photo_catagories.json
  def index
    @photo_catagories = PhotoCatagory.all
  end

  # GET /photo_catagories/1
  # GET /photo_catagories/1.json
  def show
  end

  # GET /photo_catagories/new
  def new
    @photo_catagory = PhotoCatagory.new
  end

  # GET /photo_catagories/1/edit
  def edit
  end

  # POST /photo_catagories
  # POST /photo_catagories.json
  def create
    @photo_catagory = PhotoCatagory.new(photo_catagory_params)

    respond_to do |format|
      if @photo_catagory.save
        format.html { redirect_to @photo_catagory, notice: 'Photo catagory was successfully created.' }
        format.json { render :show, status: :created, location: @photo_catagory }
      else
        format.html { render :new }
        format.json { render json: @photo_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_catagories/1
  # PATCH/PUT /photo_catagories/1.json
  def update
    respond_to do |format|
      if @photo_catagory.update(photo_catagory_params)
        format.html { redirect_to @photo_catagory, notice: 'Photo catagory was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo_catagory }
      else
        format.html { render :edit }
        format.json { render json: @photo_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_catagories/1
  # DELETE /photo_catagories/1.json
  def destroy
    @photo_catagory.destroy
    respond_to do |format|
      format.html { redirect_to photo_catagories_url, notice: 'Photo catagory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_catagory
      @photo_catagory = PhotoCatagory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_catagory_params
      params.require(:photo_catagory).permit(:name)
    end
end
