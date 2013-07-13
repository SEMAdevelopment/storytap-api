class Transition < ActiveRecord::Base
  has_many :episodes
  belongs_to :story
  belongs_to :next, class_name: 'Episode'

  def self.types
    ['Tap', 'Select']
  end
end
