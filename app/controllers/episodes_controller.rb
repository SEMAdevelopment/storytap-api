class EpisodesController < ApplicationController
  respond_to :json
  def index
    @story = Story.find(params[:story_id])
    @episodes = @story.episodes
    respond_with @episodes
  end

  def show
    @episode = Episode.find(params[:id])
    respond_with @episode
  end
end
