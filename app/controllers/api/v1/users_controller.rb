class Api::V1::UsersController < Api::V1::BaseController
  def show
    user = User.find(params[:id])
    render(json: Api::V1::UserSerializer.new(user).to_json)
  end

    def create
    user = User.new(create_params)
    return api_error(status: 422, errors: user.errors) unless user.valid?

    user.save!
    user.activate

    render(
      json: Api::V1::UserSerializer.new(user).to_json,
      status: 201,
      location: api_v1_user_path(user.id)
    )
  end
end
