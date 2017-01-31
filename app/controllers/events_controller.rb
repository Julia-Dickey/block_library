class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # respond_to do |format|
  #   format.html
  #   format.json { render json:@events.to_json }
  # end
  #
  # def self.between(start_time, end_time)
  #   where('start_at > :lo and start_at < :up',
  #     :lo => Event.format_date(start_time),
  #     :up => Event.format_date(end_time)
  #   )
  # end
  #
  # def self.format_date(date_time)
  #  Time.at(date_time.to_i).to_formatted_s(:db)
  # end
  #
  # def as_json(options = {})
  #   {
  #     :id => self.id,
  #     :title => self.title,
  #     :start => start_at.rfc822,
  #     :end => end_at.rfc822,
  #     :allDay => allDay,
  #     :url => Rails.application.routes.url_helpers.events_path(id),
  #     :color => "green"
  #   }
  # end

  # GET /events
  # GET /events.json
  def index
    @event = Event.new
    @eventsList = Event.all
    @events = Event.where(start: params[:start]..params[:end])
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
    # respond_to do |format|
    #   format.html
    #   format.js
    # end
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.save
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event.update(event_params)
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :body, :allDay, :start, :end, :url)
    end
end
