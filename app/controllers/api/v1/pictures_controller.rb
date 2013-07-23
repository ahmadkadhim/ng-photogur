class Api::V1::PicturesController < ApplicationController
  respond_to :json

  def index
    @pictures = Picture.all
    respond_with @pictures
  end

  def show
    @picture = Picture.find(params[:id])
    respond_with @picture
  end

  def create
    @picture = Picture.create(picture_params)
    respond_with @picture, location: "/"
  end

  def update
    @picture = Picture.find(params[:id])
    @picture.update_attributes(picture_params)
    respond_with @picture
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    respond_with @picture
  end

  private

  def picture_params
    return params.require(:picture).permit(:artist, :copyrighted, :title, :url)
  end

end
