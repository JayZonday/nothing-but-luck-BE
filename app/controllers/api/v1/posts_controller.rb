class Api::V1::UsersController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    @post = Post.create(title: post_params["title"], body: post_params["body"], user_id: post_params["user_id"])
    if @post.save
      render json: @post
    else
      render json: @post.errors
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    if @post.save
      render json: @post
    else
      render json: @post.errors
    end
  end

  def destroy
    Post.destroy(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end

end
