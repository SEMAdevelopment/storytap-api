class ScenesController < ApplicationController
  respond_to :json

  def index
    @scenes = Scene.where(episode_id: params[:episode_id])
    respond_with @scenes
  end

  def show
    @scene = Scene.find(params[:id])
    respond_with @scene
  end

  def preview
    @scene = Scene.find(params[:scene_id])
  end
end
