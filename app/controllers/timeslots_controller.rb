# frozen_string_literal: true

class TimeslotsController < OpenReadController
  # before_action :set_timeslot, only: %i[update destroy]

  # GET /timeslots
  def index
    @timeslots = Timeslot.all

    render json: @timeslots
  end

  # GET /timeslots/1
  def show
    render json: Timeslot.find(params[:id])
  end

  # POST /timeslots
  def create
    @timeslot = current_user.timeslots.build(timeslot_params)

    if @timeslot.save
      render json: @timeslot, status: :created, location: @timeslot
    else
      render json: @timeslot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /timeslots/1
  # def update
  #   if @timeslot.update(timeslot_params)
  #     render json: @timeslot
  #   else
  #     render json: @timeslot.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /timeslots/1
  # def destroy
  #   @timeslot.destroy
  #
  #   head :no_content
  # end
  #
  # private

  # Use callbacks to share common setup or constraints between actions.
  # def set_timeslot
  #   @timeslot = current_user.timeslots.find(params[:id])
  # end

  # Only allow a trusted parameter "white list" through.
  def timeslot_params
    params.require(:timeslot).permit(:start_time, :end_time, :room_name, :event_id)
  end
end
