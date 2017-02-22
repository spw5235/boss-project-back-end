# frozen_string_literal: true

class SettingsController < ApplicationController
  before_action :set_setting, only: [:show, :update, :destroy]
  before_action :set_student, only: [:index, :create]

  # GET /settings
  def index
    @settings = @student.observations
    render json: { settings: @settings }
  end

  # GET /settings/1
  def show
    render json: @setting
  end

  # POST /settings
  def create
    @setting = current_user.settings.build(settings_params)
    @setting.student = @student

    if @setting.save
      render json: @setting, status: :created, location: @setting
    else
      render json: @setting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /settings/1
  def update
    if @setting.update(setting_params)
      render json: @setting
    else
      render json: @setting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /settings/1
  def destroy
    @setting.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_setting
    @setting = Setting.where(id: params[:id], user: current_user).take
  end

  def set_student
    @student = current_user.students.find(params[:student_id])
  end

  # Only allow a trusted parameter "white list" through.
  def setting_params
    params.require(:setting).permit(:obs_on, :obs_setting, :obs_task, :obs_time)
  end
end
