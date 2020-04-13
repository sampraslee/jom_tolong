class HelpsController < ApplicationController
  def show
    @help = Help.find(params[:format])
  end
end
