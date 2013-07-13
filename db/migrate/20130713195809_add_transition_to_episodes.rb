class AddTransitionToEpisodes < ActiveRecord::Migration
  def change
    add_reference :episodes, :transition, index: true
  end
end
