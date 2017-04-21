class PlacesController < ApplicationController
	def index

	end

	def show

	end

	def delete
		Place.delete(params["id"])
		redirect_to "/places"
	end

	def new

	end

	def create
		p = Place.new
		p.title = params["Title"]
		p.photo = params["Photo Link"]
		p.description = params["Description"]
		p.save
		redirect_to "/places"
	end

	def edit
		
	end

	def update
		p = Place.find_by(:id => params["id"])
		p.title = params["Title"]
		p.photo = params["Photo Link"]
		p.description = params["Description"]
		p.save
		redirect_to "/places/#{params["id"]}"
	end

	def reset
		Rails.application.load_seed
		redirect_to "/places"
	end
end