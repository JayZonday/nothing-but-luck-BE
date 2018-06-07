class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end


  def create
    @user = User.create(username: params["username"], password: params["password"])
    if (@user && @user.authenticate(params["password"]))
      render json: token_json(@user)
    else
      render json: {
        errors: "Those credentials are invalid"
      }, status: :unauthorized
    end
  end


  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors
    end
  end

  def destroy
    User.destroy(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
