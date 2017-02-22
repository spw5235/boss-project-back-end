class SettingSerializer < ActiveModel::Serializer
  attributes :id, :obs_on, :obs_setting, :obs_task, :obs_time, :editable

  def editable
    scope == object.user
  end
end
