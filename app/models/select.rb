class Select < Transition
  validates :next, absence: true
  validates :options, presence: true
  def has_options?
    true
  end

  def render_options
    out = { }
    self.options.split("\n").each do |pair|
      id, text = pair.split(',')
      out[id.to_s] = text.chomp
    end
    out
  end
end
