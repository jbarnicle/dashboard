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

  def template
    @page = params[:id]
    render partial: "dashboard_evan/template", :layout => false
  end

  def school
    @school = params[:id]
    @total_ly = DummyData.where(:school => @school, :school_year => 2017).count;
    @total_ty = DummyData.where(:school => @school, :school_year => 2018).count;


    render partial: "dashboard_evan/school", :layout => false
  end



  private

end