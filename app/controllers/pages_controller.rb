class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @my_events = Event.where(user_id: current_user.id)
    @friends = current_user.askers
    @friends_events = Event.where(user_id: @friends.pluck(:receiver_id))
    @events = @my_events + @friends_events
  end

  def index
  start_date = params.fetch(:start_time, Date.today).to_date
  @event = Event.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end
end
