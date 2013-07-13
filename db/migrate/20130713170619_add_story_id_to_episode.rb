class AddStoryIdToEpisode < ActiveRecord::Migration
  def change
    add_reference :episodes, :story, index: true
  end
end
