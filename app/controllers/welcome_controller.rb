class WelcomeController < ApplicationController

  def index
    render json: { status: 200, message: "Sports App API" }
  end

end
