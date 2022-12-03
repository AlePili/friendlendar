class EventsController < ApplicationController
before_action :authenticate_user!, only: [:edit, :update, :destroy], notice: 'you must sign in first!'

  def index
    @events = Event.all
    @categories = @events.map{|event| event.category}.uniq()

    if params[:query].present?
      @events = Event.where(category: params[:query])
    else
      @events = Event.all
    end
  raise
  end


  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    @invitation = Invitation.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.save!
    if @event.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
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
    params.require(:event).permit(:visibility, :title, :category, :description, :start_time, :end_time, :location, :availability, :photo)
  end
end
