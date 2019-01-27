class Api::FriendsController < ApplicationController

  def index
    @friends = current_user.friends
    render 'api/friends/index'
  end

  def destroy
    current_user.remove_friend(current_friend)
    head :no_content
  end

  private

  def current_friend
    @friend ||= current_user.friends.find(params[:id])
  end
end