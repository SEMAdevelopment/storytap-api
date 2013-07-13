class Tap < Transition
  validates :options, absence: true
  validates :next, presence: true
end
