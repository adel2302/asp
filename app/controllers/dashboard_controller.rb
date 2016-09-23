class DashboardController < ApplicationController
  def index
    unless current_user.role == 'admin'
      @drivers = current_user.company.drivers(params[:id])
    else
      @availabilities = Availability.all.where(date: Date.tomorrow.beginning_of_day..Date.tomorrow.end_of_day)
    end
  end
end
