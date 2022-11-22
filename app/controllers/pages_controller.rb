class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @events = current_user.events
  end

  def index
  start_date = params.fetch(:start_time, Date.today).to_date
  @event = Event.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)

  end


end
