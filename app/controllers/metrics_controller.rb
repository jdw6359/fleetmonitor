class MetricsController < ApplicationController

  def create
    binding.pry
  end

  private
  def set_client
    binding.pry
    @client = Client.find(params[:id])
  end
end
