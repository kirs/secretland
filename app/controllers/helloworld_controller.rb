class HelloworldController < ApplicationController
  def index
    @credentials = Rails.application.credentials.config
  end

  def slow
    render plain: fibonacci(37)
  end

  private

  def fibonacci(n)
    return  n  if n <= 1
    fibonacci( n - 1 ) + fibonacci( n - 2 )
  end
end
