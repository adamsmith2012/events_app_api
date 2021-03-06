class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  # GET /sports/1/events
  # GET /sports/all/events
  def index
    if params[:sport_id] == "all"
      @events = Event.all
      render json: @events.to_json(include: :sport)
    else
      @events = Event.where(sport_id: params[:sport_id])
      render json: @events
    end
  end

  # GET /events/1
  def show
    render json: @event
  end

  # POST /events
  def create
    @event = Event.new(event_params)
    @event.sport_id = params[:sport_id]

    if @event.save
      render json: @event, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:name, :date, :description, :location, :cost, :gender, :img, :sport_id)
    end
end
