class FriendshipsController < ApplicationController
   
   def add
   end 

   def create
    @receiver = User.find(params[:receiver_id])
    @asker = current_user
    @friendship = Friendship.new
    @friendship.receiver = @receiver
    @friendship.asker = @asker
    @friendship.save!
  end 



end
