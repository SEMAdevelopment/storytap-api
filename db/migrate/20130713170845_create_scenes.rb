class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.belongs_to :episode, index: true
      t.text :content
      t.string :title

      t.timestamps
    end
  end
end
