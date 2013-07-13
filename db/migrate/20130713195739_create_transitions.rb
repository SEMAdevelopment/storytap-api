class CreateTransitions < ActiveRecord::Migration
  def change
    create_table :transitions do |t|
      t.string :name
      t.string :type, default: 'Tap'
      t.belongs_to :next
      t.belongs_to :story
      t.text :options
      t.timestamps
    end
  end
end
