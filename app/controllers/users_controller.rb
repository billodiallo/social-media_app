class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.ordered_by_most_recent
  end

  def friends
    friends_array = friendships.map{|friendship| friendship.friend if friendship.confirmed}
    friends_array + inverse_friendships.map{|friendship| friendship.user if friendship.confirmed}
    friends_array.compact
  end
    # Users who have yet to confirme friend requests
    def pending_friends
      friendships.map{|friendship| friendship.friend if !friendship.confirmed}.compact
    end
  
    # Users who have requested to be friends
    def friend_requests
      inverse_friendships.map{|friendship| friendship.user if !friendship.confirmed}.compact
end
