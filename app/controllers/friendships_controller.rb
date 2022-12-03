class FriendshipsController < ApplicationController

   def new
   end

   def create
    @receiver = User.find(params[:friendship][:receiver_id])
    @friendship = Friendship.new
    @friendship.receiver = @receiver
    @friendship.asker = current_user
    @friendship.save!

  end



end
