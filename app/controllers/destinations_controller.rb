class DestinationsController < ApplicationController
  def show
    @detination = Destination.find(params[:id])
  end
end
