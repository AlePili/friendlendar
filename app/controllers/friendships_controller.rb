class FriendshipsController < ApplicationController

   def new
   end

   def create
      @reciever = User.find(params[:friendship][:receiver_id])
      @friendship = Friendship.new
      @friendship.receiver = @reciever
      @friendship.asker = current_user
      if @friendship.save!
         redirect_to users_path
      end
   end 




end
