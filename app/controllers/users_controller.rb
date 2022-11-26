class UsersController < ApplicationController

    def index
        @users = User.all
        @friendship = Friendship.new
    end 
end
