class StoriesController < ApplicationController
  respond_to :json

  def index
    @stories = Story.all.page(params[:page])
    respond_with @stories
  end
end
