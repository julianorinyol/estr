class Api::V1::UserSerializer < Api::V1::BaseSerializer
  has_and_belongs_to_many :AppointmentsUsers

  def created_at
    object.created_at.in_time_zone.iso8601 if object.created_at
  end

  def updated_at
    object.updated_at.in_time_zone.iso8601 if object.created_at
  end
end
