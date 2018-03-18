class DashboardController < ApplicationController

  def index

    @id = params[:id] ? params[:id] : 1
    @path = params[:path] ? params[:path] : 'home'

    render "dashboard/#{@path}_#{@id}"

  end

  private

end