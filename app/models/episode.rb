class Episode < ActiveRecord::Base
  belongs_to :story
  has_many :scenes
end
