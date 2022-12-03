class InvitationsController < ApplicationController

  def create
    @invitation = Invitation.new(invitation_params)
    @event = Event.find(params[:event_id])
    @invitation.event = @event
    # @invitation.status = "pending"
    if @invitation.save!
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @invitation = Invitation.find(params[:id])
    @invitation.update(invitation_params)
    @event = Event.find(params[:event_id])
    redirect_to event_path(@event)
  end

  private

  def invitation_params
    params.require(:invitation).permit(:user_id, :status)
  end
end
