class VisitorsController < ApplicationController

  def home
    render :home
  end

  def new
    @visitor = Visitor.new 
    render :new 
  end

  def index
    @visitor = Visitor.all 
    render :index
  end 



end
