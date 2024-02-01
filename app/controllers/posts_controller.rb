# app/controllers/posts_controller.rb
class PostsController < ApplicationController
  before_action :set_user

  def index
    @posts = @user.posts
  end


  private

  def set_user
    @user = User.find(params[:user_id])
  end
end
