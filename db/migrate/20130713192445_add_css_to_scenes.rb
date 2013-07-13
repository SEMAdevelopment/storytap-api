class AddCssToScenes < ActiveRecord::Migration
  def change
    add_column :scenes, :css, :text
  end
end
