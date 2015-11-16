class Api::V1::UsersController < Api::V1::BaseController
  def show
    user = User.find(params[:id])
    render(json: Api::V1::UserSerializer.new(user).to_json)
  end

  def create
    user = User.new(email: params[:email], password: params[:password],password_confirmation: params[:password_confirmation])
    return api_error(status: 422, errors: user.errors) unless user.valid?

    user.save!
    
    # user.activate

    render(
      json: Api::V1::UserSerializer.new(user).to_json,
      status: 201,
      # location: api_v1_user_path(user.id)
    )

  end

  # private
  # def create_params
  #   params.require(:session).permit(:email, :password)
  # end
end
