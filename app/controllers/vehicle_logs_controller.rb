class VehicleLogsController < ApplicationController
  before_action :set_vehicle_log, only: [:show, :update, :destroy]

  # GET /vehicle_logs
  def index
    @vehicle_logs = VehicleLog.all

    render json: @vehicle_logs
  end

  # GET /vehicle_logs/1
  def show
    render json: @vehicle_log
  end

  # POST /vehicle_logs
  def create
    @vehicle_log = VehicleLog.new(vehicle_log_params)

    if @vehicle_log.save
      render json: @vehicle_log, status: :created, location: @vehicle_log
    else
      render json: @vehicle_log.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vehicle_logs/1
  def update
    if @vehicle_log.update(vehicle_log_params)
      render json: @vehicle_log
    else
      render json: @vehicle_log.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vehicle_logs/1
  def destroy
    @vehicle_log.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_log
      @vehicle_log = VehicleLog.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vehicle_log_params
      params.require(:vehicle_log).permit(:vehicle_id, :mileage, :gas_price, :repair_type, :total_price, :date, :receipt)
    end
end
