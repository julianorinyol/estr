class Api::V1::SessionSerializer < Api::V1::BaseSerializer
  attributes :id, :email, :api_key

  # def token
  #   object.authentication_token
  # end

end
