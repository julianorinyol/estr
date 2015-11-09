class Api::V1::BusinessController < Api::V1::BaseController
  def index
    # render(json: User.where(role: 'manager').pluck(:name))
    render(json: [
      { name: 'abc Store' },
      { name: 'big ol clinic' },
      { name: "yoyo business" },
      { name: 'medical clinic forty two' },
      { name: 'heyhey store' },
      { name: 'restaurant 10' },
      { name: 'restaurant #14' },
      { name: 'music event' },
      { name: 'Accupuncturist Steve' },
      { name: 'Jays knitted sweater repair co.' }
    ])
  end
  def wait_time
    render(
      json: 45 
    )
  end
  def add_delay_time
    # returns total wait time for that business
    render(
      json: 105
    )
  end

  def decrease_delay_time
    # returns total wait time for that business
    render(
      json: 92
    )
  end


  # def show
  #   user = User.find(params[:id])
  #   render(json: Api::V1::UserSerializer.new(user).to_json)
  # end

  #   def create
  #   user = User.new(create_params)
  #   return api_error(status: 422, errors: user.errors) unless user.valid?

  #   user.save!
  #   user.activate

  #   render(
  #     json: Api::V1::UserSerializer.new(user).to_json,
  #     status: 201,
  #     location: api_v1_user_path(user.id)
  #   )
  # end
end
