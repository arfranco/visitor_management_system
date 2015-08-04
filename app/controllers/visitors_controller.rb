class VisitorsController < ApplicationController

  def index
    page = params[:page] || 1
    @posts = self.get_page(page)
    render :index
  end
  
end
