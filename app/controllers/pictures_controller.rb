class PicturesController < ApplicationController

	before_filter :get_picture, only: [:show]

	def index
		@pictures = Picture.all
	end

	def show
	end

	def new
	end

	def create
		render :text => "Saving a picture. URL #{params[:url]}, Title #{params[:title]}, Artist #{params[:artst]}."
	end

	private

	def get_picture
		@picture = Picture.find(params[:id])
	end
end
