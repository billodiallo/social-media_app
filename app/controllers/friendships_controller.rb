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
    @user = User.find(params[:id])
    @friendship = current_user.inverse_friendships.find { |friendship| friendship.user == @user }

    @friendship.destroy
    redirect_to users_path, notice: 'Friend remove!'
  end

  def approve
    @user = User.find(params[:user_id])
    @friendship = current_user.inverse_friendships.find { |friendship| friendship.user == @user }
    @friendship.confirmed = true
    if @friendship.save
      redirect_to users_path(params[:user_id]), notice: 'accepted'
    end
  end
end
