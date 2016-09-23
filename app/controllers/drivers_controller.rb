class DriversController < ApplicationController
  before_action :set_driver, only: [:show, :edit, :update, :destroy]

  # GET /drivers
  # GET /drivers.json
  def index
    if current_user.role != 'admin'
      @drivers = current_user.company.drivers(params[:id])
      redirect_to root_path, notice: 'Access not permitted.'
    else
      redirect_to root_path, notice: 'Access not permitted.'
    end
  end

  # GET /drivers/1
  # GET /drivers/1.json
  def show
    redirect_to root_path, notice: 'Access not permitted.'
  end

  # GET /drivers/new
  def new
    @driver = Driver.new
    @driver.company_id = current_user.company.id
  end

  # GET /drivers/1/edit
  def edit
  end

  # POST /drivers
  # POST /drivers.json
  def create
    @driver = Driver.new(driver_params)

    respond_to do |format|
      if @driver.save
        format.html { redirect_to root_path, notice: 'Driver was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /drivers/1
  # PATCH/PUT /drivers/1.json
  def update
    respond_to do |format|
      if @driver.update(driver_params)
        format.html { redirect_to root_path, notice: 'Driver was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /drivers/1
  # DELETE /drivers/1.json
  def destroy
    @driver.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver
      @driver = Driver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def driver_params
      params.require(:driver).permit(:last_name, :first_name, :phone_number, :company_id)
    end
end
