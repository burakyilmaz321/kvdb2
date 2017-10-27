class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
    @actors = @video.actors.all
    @categories = @video.categories.all
  end
end
