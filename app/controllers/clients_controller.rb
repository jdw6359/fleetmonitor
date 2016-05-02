class ClientsController < ApplicationController
  before_action :set_client, only: [:show]

  def index
    @clients = Client.includes(client_associations).all
    render json: @clients, include: client_associations
  end

  def show
    render json: @client, include: client_associations
  end

  private
  def set_client
    @client = Client.includes(client_associations).find(params[:id])
  end

  def client_associations
    [:devices]
  end
end