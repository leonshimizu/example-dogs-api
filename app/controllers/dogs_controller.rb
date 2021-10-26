class DogsController < ApplicationController
  def create
    dog = Dog.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed]
    )
    dog.save
    if current_user
      render json: dog.as_json
    else
      render json: {message: "Sorry, you must be logged in..."}
    end

    
  end 
end
