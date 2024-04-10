# frozen_string_literal: true

class Nebula::IndexView < ApplicationView
  def template
    h1 { "Nebula::Index" }
    p { "Find me in app/views/nebula/index_view.rb" }
  end
end
