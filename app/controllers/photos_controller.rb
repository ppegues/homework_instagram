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
    photo.source = params[:the_source]
    photo.caption = params[:the_caption]
    photo.save
  end
  def destroy
    photo = Photo.find(params[:id])
    photo.destroy
  end
  def edit_form
    @photo = Photo.find(params[:id])
  end
  def update_row
    photo= Photo.find(params[:id])
    photo.caption = params[:the_caption]
    photo.save
  end
  end
