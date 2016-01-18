class SayingsController < ApplicationController
	def index
		@saying = Saying.order("RANDOM()").first
	end

	def new
		@saying = Saying.new
	end
end
