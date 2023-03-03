class ApplicationController < ActionController::Base
  include ActionController::Cookies
  after_action :set_csrf_cookie
  skip_before_action :verify_authenticity_token

  private

  def authorize
    return unauthorized unless
      cookies['CSRF_TOKEN'] == request.headers['X-CSRF-Token'] &&
      session[:admin_id]
  end

  def unauthorized
    render json: { error: 'Not authorized' }, status: :unauthorized
  end

  def set_csrf_cookie
    cookies['CSRF_TOKEN'] = {
      value: form_authenticity_token,
      secure: true,
      same_site: :strict
    }
  end
end
