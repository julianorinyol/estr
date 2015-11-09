class Api::V1::AppointmentsController < Api::V1::BaseController
  before_action :restrict_access, only: [:index]

  def index
    # user = User.find(params)
    # render user.appointments.to_json
    render(
      json: [{
        user_id: 1,
        business_id: 4,
        place_in_queue: 1
      },{
        user_id: 1,
        business_id: 2,
        place_in_queue: 3
      },{
        user_id: 1,
        business_id: 3,
        place_in_queue: 7
      },{
        user_id: 1,
        business_id: 7,
        place_in_queue: 2
      }
      ]
    )
  end

  def create
    render(
      json: "'method': 'create'" 
    )
  end

  def mark_inactive
    render(
      json: "'method': 'mark_inactive'" 
    )
  end

  def mark_done
    render(
      json: "'method': 'mark_done'" 
    )
  end

  def move_up
    render(
      json: "'method': 'move_up'" 
    )
  end

  def move_down
    render(
      json: "'method': 'move_down'" 
    )
  end
end


      # post 'business/:id/appointments' => 'appointments#create'
      # put 'business/:id/appointments/:id/mark_inactive' => 'appointments#mark_inactive'
      # put 'business/:id/appointments/:id/mark_done' => 'appointments#mark_done'
      # put 'business/:id/appointments/:id/move_up' => 'appointments#move_up'
      # put 'business/:id/appointments/:id/move_up' => 'appointments#move_down'