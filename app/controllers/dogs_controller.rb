class DogsController < ApplicationController
  def create
    dog = Dog.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed],
      user_id: current_user.id
    )
    dog.save
    if current_user
      render json: dog
    else
      render json: {message: "Sorry, you must be logged in..."}
    end    
  end 

  def update
    dog = Dog.find(params[:id])
    dog.name = params[:name] || dog.name
    dog.age = params[:age] || dog.age
    dog.breed = params[:breed] || dog.breed
    dog.user_id = params[:user_id] || dog.user_id
    dog.save
    render json: dog
  end

  def index
    dogs = Dog.all 
    if current_user
      render json: dogs
    else
      render json: {message: "Sorry, you must be logged in..."}
    end    
  end
end
