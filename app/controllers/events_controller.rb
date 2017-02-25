class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  def index
    @event = Event.new
    @eventsList = Event.all
    @events = Event.where(start: params[:start]..params[:end])
  end

  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
    # @event = Event.find(params[:id])
    # respond_to do |format|
    #   format.html {redirect_to events_path}
    #   format.js
    # end
  end

  # POST /events
  def create
    @event = Event.new(event_params)
    @event.save
  end

  # PATCH/PUT /events/1
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :body, :allDay, :start, :end, :url)
    end
end
