class ActorsController < ApplicationController
  def show
    video = Video.find(params[:id])
    @actor = video.actors.find(params[:id])
  end
end
