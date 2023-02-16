class Api::TagsController < ApplicationController
  # GET /tags
  def index
    @tags = Tag.all

    render :index, status: :ok
  end
end
