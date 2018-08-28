# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    users = User.all

    render json: users
  end

  def create
    user = User.create!(user_params)

    render json: user, status: :created
  end

  def update
    user = User.find(params[:id])
    user.update!(user_params)

    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy!

    render json: nil, status: :accepted
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :role)
  end
end
