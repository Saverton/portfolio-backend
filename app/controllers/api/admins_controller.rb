class Api::AdminsController < ApplicationController
  # POST /admins
  # POST /admins.json
  def create
    @admin = Admin.new(admin_params)

    if @admin.save
      session[:admin_id] = @admin.id
      render :show, status: :created
    else
      render json: @admin.errors, status: :unprocessable_entity
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end
