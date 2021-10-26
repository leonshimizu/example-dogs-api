class DogsController < ApplicationController
  def create
    render json: {message: "hello"}
  end 
end
