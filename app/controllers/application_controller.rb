class ApplicationController < ActionController::Base
  include ActionController::Cookies
  after_action :set_csrf_cookie
  skip_before_action :verify_authenticity_token

  private

  def authorize
    # if cookies['CSRF_TOKEN'] != request.headers['X-CSRF-Token']
    #   puts 'failed CSRF token'
    #   unauthorized
    # elsif !session[:admin_id]
    #   puts 'failed session admin_id'
    #   unauthorized
    # end

    return unauthorized unless session[:admin_id]
  end

  def unauthorized
    render json: { error: 'Not authorized' }, status: :unauthorized
  end

  # def set_csrf_cookie
  #   cookies['CSRF_TOKEN'] = {
  #     value: form_authenticity_token,
  #     secure: true,
  #     same_site: :none,
  #     domain: 'https://portfolio-saverton.vercel.app/'
  #   }
  # end
end
