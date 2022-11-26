class InvitationsController < ApplicationController

  def create
    @invitation = Invitation.new(invitation_params)
    @event = Event.find(params[:event_id])
    @invitation.event = @event
    if @invitation.save!
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(:user_id)
  end
end
