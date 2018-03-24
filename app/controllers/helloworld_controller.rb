class HelloworldController < ApplicationController
  def index
    @credentials = Rails.application.credentials.config
  end
end
