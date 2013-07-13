class StoriesController < ApplicationController
  respond_to :json

  def index
    @stories = Story.all.page(params[:page])
    respond_with @stories
  end

  def show
    @story = Story.find(params[:id])
    respond_with @story
  end
end

