class UploadPhotoController < ApplicationController
  def index
  	@upload_photo = Image.new
  end
end
