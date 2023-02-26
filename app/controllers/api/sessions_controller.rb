class Api::SessionsController < ApplicationController
  # GET /me
  def show
    return unauthorized unless session[:admin_id]

    @admin = Admin.find_by(id: session[:admin_id])
    render :show, status: :ok
  end

  # GET /login
  def create
    @admin = Admin.find_by(email: params[:email])

    if @admin.authenticate(params[:password])
      session[:admin_id] = @admin.id
      render :show, status: :created
    else
      unauthorized
    end
  end

  # GET /logout
  def destroy
    session.delete :admin_id
    head :no_content
  end
end
