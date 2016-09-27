class DashboardController < ApplicationController
  def index
    unless current_user.role == 'admin'
      @drivers = current_user.company.drivers(params[:id])
    else
      @q = Availability.ransack(params[:q])
      if params[:q].blank?
        @availabilities = Availability.all.where(date: Date.tomorrow.beginning_of_day..Date.tomorrow.end_of_day)
      else
        @availabilities = @q.result(distinc: true)
      end
    end
  end
end
