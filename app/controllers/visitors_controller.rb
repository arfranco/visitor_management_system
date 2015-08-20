class VisitorsController < ApplicationController

  def home
    render :home
  end

  def new
    @visitor = Visitor.new 
    render :new 
  end

  def index
    @visitors = Visitor.all 
    render :index
  end 

  def create
    @visitor = Visitor.create(visitor_params)
    redirect_to :root
  end
 

  private

  def visitor_params
    params.require(:visitor).permit(:first_name, :last_name, :phone_number, :street_address, :city, :state, :date_of_visit, :referral)
  end


end
