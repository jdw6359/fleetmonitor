class ClientsController < ApplicationController
  before_action :set_client, only: [:show]

  def index
    @clients = Client.all
    render json: @clients      
  end

  def show
    render json: @client
  end

  private
  def set_client
    @client = Client.find(params[:id])
  end
end