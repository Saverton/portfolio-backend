class Api::TagsController < ApplicationController
  # GET /tags
  def index
    @tags = Tag.all

    render json: @tags, status: :ok
  end
end
