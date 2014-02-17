class UploadPhotoController < ApplicationController
  def index
  end

  def new
  	@upload_photo = Image.new
  end

  def create
  	@upload_photo = Image.new(params[:upload_photo])

  	respond_to do |format|
  		if @upload_photo.save
  			format.html { redirect_to @upload_photo, notice: 'Image was successfully saved.'}
  			format.json { render json: @upload_photo, status: :created, location: @upload_photo}
  		else
  			format.html { render action: "new" }
  			format.json { render json: @upload_photo.errors, status: :unprocessable_entity}
  		end
  	end
  end

  def show
  	@upload_photo = Image.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @upload_photo }
    end
  end
end
