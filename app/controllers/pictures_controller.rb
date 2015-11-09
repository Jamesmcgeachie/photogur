class PicturesController < ApplicationController

	before_filter :get_picture, only: [:show, :edit, :update]

	def index
		@pictures = Picture.all
	end

	def show
	end

	def new
		@picture = Picture.new
	end

	def create
		@picture = Picture.new(sanitized_params)
		if @picture.save
			redirect_to pictures_url
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @picture.update_attributes(sanitized_params)
			redirect_to "/pictures/#{@picture.id}"
		else
			render :edit
		end
	end

	private

	def get_picture
		@picture = Picture.find(params[:id])
	end

	def sanitized_params
		params.require(:picture).permit(:url, :title, :artist)
	end
end
