class IncomingController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    puts "Incoming params here: #{params}"

    head 200
  end
end
