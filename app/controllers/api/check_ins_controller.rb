class Api::CheckInsController < ApplicationController

  def index
    @check_ins = CheckIn.all
    render json: @check_ins
  end

  def create
    check_in = CheckIn.create(check_in_params)
    if check_in.save
      render json: check_in
    end
  end

  private
  def check_in_params
    params.permit(:device_id, :monitoring_version, :os_version,
      :status, :check_in_time)
  end
end