class Api::DevicesController < ApplicationController
  before_action :set_device, only: [:show]

  def index
    @devices = Device.all
    render json: @devices
  end

  def show
    render json: @device
  end

  private
  def set_device
    @device = Device.find(params[:id])
  end
end