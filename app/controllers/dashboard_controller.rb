class DashboardController < ApplicationController

  def index

    @id = params[:id] ? params[:id] : 1
    @path = params[:path] ? params[:path] : 'home'

#    render "dashboard_evan/#{@path}_#{@id}"
    render "dashboard_evan/index"

  end

  def main
    render partial: "dashboard_evan/main", :layout => false
  end

  def students
    render partial: "dashboard_evan/students", :layout => false
  end

  def schools
    render partial: "dashboard_evan/schools", :layout => false
  end
  def gbecc
    render partial: "dashboard_evan/gbecc", :layout => false
  end


  private

end