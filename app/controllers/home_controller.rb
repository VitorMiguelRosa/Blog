class HomeController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc).limit(5)
    @users = User.all
    @user = User.find(1)
  end
end
