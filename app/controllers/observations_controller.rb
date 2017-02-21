# frozen_string_literal: true

class ObservationsController < OpenReadController
  before_action :set_observation, only: [:show, :update, :destroy]
  before_action :set_student, only: [:index, :create]

  # GET /observations
  def index
    @observations = @student.observations
    render json: { observations: @observations }
    # @observations = current_user.observations
    # render json: @observations
  end

  # GET /observations/1
  def show
    @observations = current_user.observations
    render json: @observation
  end

  # POST /observations
  def create
    # @observation = current_user.observations.build(observation_params)
    # @observation.student = @student
    @observation = current_user.observations.build(observation_params)
    @observation.student = @student

    if @observation.save
      render json: @observation, status: :created
    else
      render json: @observation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /observations/1
  def update
    if @observation.update(observation_params)
      render json: @observation
      # render json: @observation, status: :ok
    else
      render json: @observation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /observations/1
  def destroy
    @observation.destroy
    head :no_content
  end

  private

  def set_student
    @student = Student.find(params[:student_id])
  end

  def set_observation
    @observation = Observation.find(params[:id])
    # @observation = Observation.where(id: params[:id], user: current_user).take
  end

  # Use callbacks to share common setup or constraints between actions.
  # def set_observation
  #   # Below is prior to my last migration
  #   @observation = Observation.find(params[:student_id])
  #
  #   # Below is from the example file
  #   # @observation = current_user.observations.find(params[:id])
  # end

  # Only allow a trusted parameter "white list" through.
  # def observation_params
  #   params.permit(:obs_num, :obs_on, :obs_setting,
  #                 :obs_task, :obs_time, :aet, :pet,
  #                 :oft_m, :oft_v, :oft_p, :obs_comment)
  # end

  def observation_params
    params.require(:observation).permit(:obs_num, :obs_on, :obs_setting,
                                        :obs_task, :obs_time, :aet, :pet,
                                        :oft_m, :oft_v, :oft_p, :obs_comment)
  end

  # private :set_observation, :observation_params
end
