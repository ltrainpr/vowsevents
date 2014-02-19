class UploadPhotoController < ApplicationController
  def index
  end

  def new
  	@upload_photo = Image.new
  end

  def create
		@upload_photo = Image.new(upload_photo_params)

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

  def destroy
  	@upload_photo = Image.find(params[:id])
    @upload_photo.destroy
    respond_to do |format|
      format.html { redirect_to images_url }
      format.json { head :no_content }
    end
  end

  private

  def upload_photo_params
    params.require(:image).permit(:s3_image_url)
  end
end
