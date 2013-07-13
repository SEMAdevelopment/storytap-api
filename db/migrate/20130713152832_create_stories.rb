class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.belongs_to :author, index: true
      t.text :description

      t.timestamps
    end
  end
end
