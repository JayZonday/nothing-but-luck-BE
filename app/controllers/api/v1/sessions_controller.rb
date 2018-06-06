class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params["username"])
    if (@user && @user.authenticate(params["password"]))
      render json: token_json(@user)
    else
      render json: {
        errors: "You shall not pass"
      }, status: :unauthorized
    end
  end

end
