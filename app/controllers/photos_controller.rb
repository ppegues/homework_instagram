  class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
   photo= Photo.find_by({:id => params[:id]})
   @picture = photo.source
   @caption = photo.caption
  end
  def new_form
  end
  def create_row
    photo= Photo.new
    photo.source = "the_source"
    photo.caption = "the_caption"
    photo.save
  end
  def destroy
    photo = Photo.find(:id)
    photo.destroy
  end
  end
