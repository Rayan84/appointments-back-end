class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(_resource, _opts = {})
    render json: {
      message: 'You are logged in.',
      user: current_user,
      token: current_token,
      status: 200
    }
  end

  def respond_to_on_destroy
    log_out_success && return if current_user

    log_out_failure
  end

  def log_out_success
    render json: {
      message: 'You are logged out.',
      status: 200
    }
  end

  def log_out_failure
    render json: {
      message: 'Hmmm, nothing happened.',
      status: 401
    }
  end
end
