# frozen_string_literal: true

class UsersController < ApplicationController
  def create
    user = User.create!(user_params)

    render json: user, status: :created
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :role)
  end
end
