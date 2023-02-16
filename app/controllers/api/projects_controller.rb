class Api::ProjectsController < ApplicationController
  before_action :set_project, only: %i[show update destroy]

  # GET /projects
  def index
    @projects = Project.all

    render :index, status: :ok
  end

  # POST /projects
  def create
    @project = Project.new(project_params)

    if @project.save
      add_tags

      add_links

      render :show, status: :created
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      add_tags

      add_links

      render :show, status: :accepted
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
    head :no_content
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

  # Add tags from params[:tags] to project
  def add_tags
    return unless params[:tags]

    params[:tags].each do |tag|
      tag = Tag.find_or_create_by(name: tag)
      @project.project_tags.create!(tag_id: tag.id)
    end
  end

  # Add tags from params[:links] to project
  def add_links
    return unless params[:links]

    params[:links].each do |link|
      @project.links.create!(url: link[:url], source: link[:source])
    end
  end
end
