class DashboardController < ApplicationController

	def index
		@search = User.search(params[:q])
		@users = @search.result.paginate(page: params[:page], per_page: 5)
	end
end
