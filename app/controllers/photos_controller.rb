class PhotosController < ApplicationController
	def index 
		@photos = Photo.all
	end

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(photo_params)
		event = Event.find(photo_params[:event_id])
		if @photo.save
      redirect_to event_path(event), notice: "The photo has been added."
    else
      render "new"
    end
	end

	def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to root_path, notice:  "The photo has been deleted."
  end

private 
	def photo_params
		params.require(:photo).permit(:photo, :description, :event_id)
	end
end
