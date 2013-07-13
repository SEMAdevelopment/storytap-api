class Scene < ActiveRecord::Base
  belongs_to :episode

  def render_css
    '<style type="text/css">' + self.css.to_s + '</style>'
  end
end
