class Api::V1::SessionsController < Api::V1::BaseController
  def create
    user = User.find_by(email: create_params[:email].downcase)
    if user && user.authenticate(create_params[:password])
      # self.current_user = user
      render(
        json: Api::V1::SessionSerializer.new(user, root: false).to_json,
        status: 201
      )
    else
      return api_error(status: 401, message: 'sessions create error.')
    end
  end

  # def create
  #     user = User.find_by(email: params[:session][:email].downcase)
  #     if user && user.authenticate(params[:session][:password])
  #       if user.activated?
  #         log_in user
  #         params[:session][:remember_me] == '1' ? remember(user) : forget(user)
  #         redirect_back_or user
  #       else
  #         message = "Account not activated. "
  #         message += "Check your email for the activation link."
  #         flash[:warning] = message
  #         redirect_to root_url
  #       end
  #     else
  #       flash.now[:danger] = 'Invalid email/password combination'
  #       render 'new'
  #     end
  #   end
  #   def destroy
  #     log_out if logged_in?
  #     redirect_to root_url
  #   end
  private
  def create_params
    params.require(:session).permit(:email, :password)
  end
end
