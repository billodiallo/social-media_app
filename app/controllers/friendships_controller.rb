class FriendshipsController < ApplicationController
  def new
    @friendship = Friendship.new
  end

  def create
    @friendship = current_user.friendships.build(friend_id: params[:user_id])
    if @friendship.save
      redirect_to users_path, notice: 'Friend request was sent!!'
    else
      redirect_to users_path, notice: 'Unable to sent friend request , try again'

    end
  end

  def destroy
    @friendship = Friendship.find_id(id: params[:id])
    @friendship.destroy
    redirect_to users_path, notice: 'Friend remove!'
  end

  def approve
    @user = User.find(params[:user_id])
    @friend = User.find(params[:friend_id])
    @user.confirm_friend(@friend)
    redirect_to users_path(params[:user_id])
  end
end
