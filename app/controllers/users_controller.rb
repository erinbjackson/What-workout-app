class UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find(params[:id])
    render json: user.as_json
  end

  def update
    user = User.find(params[:id].to_i)
    user.name = params[:name] || user.name
    user.email = params[:email] || user.email
    user.password_digest = params[:password_digest] || user.password_digest
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    render json:{message: "Your account has been destroyed."}
  end
end
