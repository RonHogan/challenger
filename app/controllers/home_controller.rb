class HomeController < ApplicationController
	def index
		@challange_walls = ChallangeWall.all
	end
end
