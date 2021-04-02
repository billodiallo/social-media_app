class FriendshipsController < ApplicationController
  def create
    @user = current_user.created_friendship.build(friend_params)
  end
end
