class ObservationsController < ApplicationController
  before_action :set_observation, only: [:show, :update, :destroy]

  # GET /observations
  def index
    @observations = Observation.all

    render json: @observations
  end

  # GET /observations/1
  def show
    render json: @observation
  end

  # POST /observations
  def create
    @observation = Observation.new(observation_params)

    if @observation.save
      render json: @observation, status: :created, location: @observation
    else
      render json: @observation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /observations/1
  def update
    if @observation.update(observation_params)
      render json: @observation
    else
      render json: @observation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /observations/1
  def destroy
    @observation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observation
      @observation = Observation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def observation_params
      params.require(:observation).permit(:obs_num, :obs_on, :obs_setting, :obs_task, :obs_time, :aet, :pet, :oft_m, :oft_v, :oft_p, :obs_comment)
    end
end
