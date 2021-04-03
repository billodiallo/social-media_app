class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.ordered_by_most_recent
    @friends = current_user.friends
    @friends_req = current_user.pending_friends
    @friends_pen = current_user.friend_requests
  end

  def create
  end
end
