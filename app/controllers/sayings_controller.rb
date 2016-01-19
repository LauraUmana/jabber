class SayingsController < ApplicationController
	def index
		@saying = Saying.order("RANDOM()").first
	end

	def new
		@saying = Saying.new
	end

	def create
		Saying.create(saying_params)
		redirect_to root_path
	end

	private

	def saying_params
		params.require(:saying).permit(:quote, :celebrity)
	end
end

