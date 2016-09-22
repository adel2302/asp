class DashboardController < ApplicationController
  def index
    unless current_user.role == 'admin'
      @drivers = current_user.company.drivers(params[:id])
    end
  end
end
