class Api::V1::UserSerializer < Api::V1::BaseSerializer
  attributes :id, :email, :role, :created_at, :updated_at, :api_key

  def created_at
    object.created_at.in_time_zone.iso8601 if object.created_at
  end

  def updated_at
    object.updated_at.in_time_zone.iso8601 if object.created_at
  end
end
