class ApplicationController < ActionController::API
  include ActionController::Cookies

  private

  def authorize
    return unauthorized unless session[:admin_id]
  end

  def unauthorized
    render json: { error: 'Not authorized' }, status: :unauthorized
  end
end
