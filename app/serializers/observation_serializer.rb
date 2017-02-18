class ObservationSerializer < ActiveModel::Serializer
  attributes :id, :obs_num, :obs_on, :obs_setting, :obs_task, :obs_time, :aet, :pet, :oft_m, :oft_v, :oft_p, :obs_comment
end
