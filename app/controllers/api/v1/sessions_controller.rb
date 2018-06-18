class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params["username"])
    if (@user && @user.authenticate(params["password"]))
      render json: token_json(@user)
    else
      render json: {
        errors: "You are unauthorized!!!"
      }, status: :unauthorized
    end
  end

  def show
    @user = User.find_by(id: params["id"])
    if (@user && authorized?(@user))
      render json: token_json(@user)
    else
      render json: {
        errors: "You are unauthorized!!!"
      }, status: :unauthorized
    end
  end
end
