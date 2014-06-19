class LandingPageController < ApplicationController
  include REMOTE_API
  REMOTE_API::ZeroPaper.new
  def index
  end
end
