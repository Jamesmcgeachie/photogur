class PicturesController < ApplicationController

	before_filter :get_picture, only: [:show]

	def index
		@pictures = Picture.all
	end

	def show
	end

	private

	def get_picture
		@picture = Picture.find(params[:id])
	end
end
