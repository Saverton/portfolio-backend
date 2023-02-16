class Api::ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show update destroy ]

  # GET /projects
  def index
    @projects = Project.all

    render json: @projects, status: :ok
  end

  # POST /projects
  def create
    @project = Project.new(project_params)

    if @project.save
      # Array of tags
      params[:tags].each do |tag|
        tag = Tag.find_or_create_by(name: tag)
        @project.project_tags.create!(tag_id: tag.id)
      end

      # Array of links
      params[:links].each do |link|
        pp link
        @project.links.create!(url: link[:url], source: link[:source])
      end

      render json: @project, status: :created
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_project
    @project = Project.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def project_params
    params.require(:project).permit(:title, :description)
  end
end
