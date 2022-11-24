class EventsController < ApplicationController
before_action :authenticate_user!, only: [:edit, :update, :destroy], notice: 'you must sign in first!'

  def index
  @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to profile_path(@event)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to profile_path(@event), status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:visibility, :title, :category, :description, :start_time, :end_time, :location, :availability)
  end
end
