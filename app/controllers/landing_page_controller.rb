class LandingPageController < ApplicationController
  layout 'landing'

  def index
  end

  private
  def solve_layout
    layout 'landing'
    return true
  end
end
