class UsersController < ApplicationController

    def index
        @users = User.all
        @friendship = Friendship.new
    end 

    def show
        @user = User.find(params[:id])
        @events = Event.where(user_id: @user.id)

        @friends = current_user.askers      
        @friendship_requests = Friendship.where(asker: current_user, receiver: @user)

    end 
end
